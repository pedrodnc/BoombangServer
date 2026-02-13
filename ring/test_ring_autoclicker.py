import sys
import unittest
from unittest.mock import MagicMock

# Mock dependencies to bypass ImportError and sys.exit(1)
sys.modules["pyautogui"] = MagicMock()
sys.modules["keyboard"] = MagicMock()

# Import the module under test
try:
    from ring.ring_autoclicker import (
        get_random_click_position,
        CLICK_AREA_X_MIN,
        CLICK_AREA_X_MAX,
        CLICK_AREA_Y_MIN,
        CLICK_AREA_Y_MAX,
    )
except ImportError:
    # Adjust for running from inside the ring directory or without ring package
    try:
        from ring_autoclicker import (
            get_random_click_position,
            CLICK_AREA_X_MIN,
            CLICK_AREA_X_MAX,
            CLICK_AREA_Y_MIN,
            CLICK_AREA_Y_MAX,
        )
    except ImportError:
         # Fallback: add parent directory to path if needed (though usually not needed with pytest)
        import os
        sys.path.append(os.path.dirname(os.path.abspath(__file__)))
        from ring_autoclicker import (
            get_random_click_position,
            CLICK_AREA_X_MIN,
            CLICK_AREA_X_MAX,
            CLICK_AREA_Y_MIN,
            CLICK_AREA_Y_MAX,
        )


class TestRingAutoclicker(unittest.TestCase):
    def test_get_random_click_position_bounds(self):
        """
        Verify that generated click positions are within defined boundaries.
        Runs multiple iterations to ensure randomness stays within bounds.
        """
        for _ in range(100):
            x, y = get_random_click_position()

            # Check X coordinate
            self.assertGreaterEqual(x, CLICK_AREA_X_MIN, f"X coordinate {x} is smaller than minimum {CLICK_AREA_X_MIN}")
            self.assertLessEqual(x, CLICK_AREA_X_MAX, f"X coordinate {x} is larger than maximum {CLICK_AREA_X_MAX}")

            # Check Y coordinate
            self.assertGreaterEqual(y, CLICK_AREA_Y_MIN, f"Y coordinate {y} is smaller than minimum {CLICK_AREA_Y_MIN}")
            self.assertLessEqual(y, CLICK_AREA_Y_MAX, f"Y coordinate {y} is larger than maximum {CLICK_AREA_Y_MAX}")

if __name__ == "__main__":
    unittest.main()
