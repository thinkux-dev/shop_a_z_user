const {onDocumentCreated} = require("firebase-functions/v2/firestore");
const {initializeApp} = require("firebase-admin/app");
const {setGlobalOptions} = require("firebase-functions/v2");
const {getMessaging} = require("firebase-admin/messaging");
const {logger} = require("firebase-functions");
// const { event } = require("firebase-functions/v1/analytics");
initializeApp();
const msg = getMessaging();
setGlobalOptions({maxInstances: 10});

exports.sendOrderNotification = onDocumentCreated("orders/{id}", (event) => {
  const topic = "order";
  const id = event.params.id;
  const payload = {
    notification: {
      title: "New Order",
      body: "You have a new order!",
    },
    data: {
      key: "neworder",
      value: id,
    },
    topic: topic,
  };
  msg.send(payload)
      .then((response) => {
        logger.log("order message sent");
      })
      .catch((error) => {
        logger.log("Error occured", error);
      });
});
