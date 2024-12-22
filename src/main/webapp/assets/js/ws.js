// var stompClient = null;
// var senderid = ${user.id};
// var receiverid = ${following.id};
// function connect(event) {
//     var socket = new SockJS('/ws');
//     stompClient = Stomp.over(socket);
//     stompClient.connect({}, onConnected, onError);
// }
// connect();
// function onConnected() {
//     // Subscribe to the Public Topic
//     stompClient.subscribe('/notification/'+senderid+'', onNotification);
// }
//
// function onError(error) {
//
// }
//
// function addFollowing(event) {
//      var notification = {
//             senderid: senderid,
//             receiver: {
//
//             },
//             type: 0,
//             seen:0
//         };
//         if (receiver.value==''){
//             stompClient.send("/app/chat.send", {}, JSON.stringify(chatMessage));
//         }
//         else {
//             stompClient.send("/app/chat.private", {}, JSON.stringify(chatMessage));
//             chatMessage.receiver=chatMessage.sender;
//             stompClient.send("/app/chat.private", {}, JSON.stringify(chatMessage));
//         }
//         messageInput.value = '';
//     event.preventDefault();
// }