
const Chat = {
    chatEl:{
        selector: ".chat-input-js"
    },
    init(){
        this.setListeners();
    },
    setListeners(){
        $(this.chatEl.selector).on('keyup', (e) => this.sendMessageHandler(e));
    },
    sendMessageHandler(e){
        if (e.keyCode === 13){
            e.preventDefault();
            let chatInput = $(this.chatEl.selector);
            const message = this.sanitizeMessage(chatInput.val());
            this.sendDataMessage(message)
            chatInput.val('');
        }
    },
    sanitizeMessage(message){
        if (!message || typeof message !== 'string') {
            return '';
        }
        const div = document.createElement('div');
        div.textContent = message;
        return div.innerHTML.substring(0, 500);
    },
    sendDataMessage(message){
        if (!message || message.trim().length === 0) {
            return;
        }
        const data = {
            channel: "send-message",
            token_uid: window.uid || '',
            paramater: message,
        };
        socket.emit(data.channel, data);
    },
    showChatInputHandler(){
        $(this.chatEl.selector).removeClass('d-none');
    },
    removeChatInputHandler(){
        $(this.chatEl.selector).addClass('d-none');
    }
}
module.exports = Chat;