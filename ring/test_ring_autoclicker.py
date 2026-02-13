import unittest
from unittest.mock import MagicMock, patch
import sys
import datetime

# Mock dependencies before importing the module under test
# This is necessary because ring_autoclicker.py imports them at the top level
sys.modules['pyautogui'] = MagicMock()
sys.modules['keyboard'] = MagicMock()

# Now we can safely import the module
# We need to add the current directory to sys.path to import from ring
import os
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

try:
    import ring_autoclicker
except ImportError:
    # Fallback for when running from root
    from ring import ring_autoclicker

class TestRingAutoclicker(unittest.TestCase):
    def setUp(self):
        # Reset state before each test
        ring_autoclicker.state.reset_session()
        ring_autoclicker.state.session_clicks = 0
        # Reset mocks
        sys.modules['pyautogui'].reset_mock()
        sys.modules['pyautogui'].click.side_effect = None  # Clear side effect from previous tests
        sys.modules['keyboard'].reset_mock()

    def test_perform_click_random_position(self):
        """Test click with random position enabled"""
        # Enable random position
        ring_autoclicker.RANDOMIZE_POSITION = True

        # Mock random.randint to return predictable values
        with patch('random.randint', side_effect=[500, 400]):
            ring_autoclicker.perform_click()

            # Verify click was called with correct coordinates
            sys.modules['pyautogui'].click.assert_called_once_with(500, 400)

            # Verify state updated
            self.assertEqual(ring_autoclicker.state.click_count, 1)
            self.assertEqual(ring_autoclicker.state.session_clicks, 1)

    def test_perform_click_current_position(self):
        """Test click with random position disabled (current mouse position)"""
        # Disable random position
        ring_autoclicker.RANDOMIZE_POSITION = False

        ring_autoclicker.perform_click()

        # Verify click was called without arguments (current position)
        sys.modules['pyautogui'].click.assert_called_once_with()

        # Verify state updated
        self.assertEqual(ring_autoclicker.state.click_count, 1)
        self.assertEqual(ring_autoclicker.state.session_clicks, 1)

    def test_perform_click_logging(self):
        """Test that logging occurs every 10 clicks"""
        ring_autoclicker.RANDOMIZE_POSITION = False

        # Set click count to 9 so next click is 10th
        ring_autoclicker.state.click_count = 9
        ring_autoclicker.state.session_clicks = 9

        # Ensure start_time is set to avoid TypeError
        ring_autoclicker.state.start_time = datetime.datetime.now()

        # Capture stdout to verify logging
        with patch('builtins.print') as mock_print:
            ring_autoclicker.perform_click()

            # Verify click happened
            sys.modules['pyautogui'].click.assert_called_once()

            # Verify state updated
            self.assertEqual(ring_autoclicker.state.click_count, 10)

            # Verify print was called (logging)
            # The function prints: [AUTOCLICKER] Clicks: 10 | CPS: ...
            mock_print.assert_called()
            args, _ = mock_print.call_args
            self.assertTrue(args[0].startswith("[AUTOCLICKER] Clicks: 10"))

    def test_perform_click_exception(self):
        """Test exception handling during click"""
        ring_autoclicker.RANDOMIZE_POSITION = False

        # Mock click to raise exception
        sys.modules['pyautogui'].click.side_effect = Exception("Mouse error")

        with patch('builtins.print') as mock_print:
            # Should not raise exception
            ring_autoclicker.perform_click()

            # Verify error was logged
            mock_print.assert_called()
            args, _ = mock_print.call_args
            self.assertTrue(args[0].startswith("[ERROR] Fallo al hacer click"))
            self.assertIn("Mouse error", args[0])

if __name__ == '__main__':
    unittest.main()
