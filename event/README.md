## **Event**

 * In the Solidity source code, to define an event, you mark it by preceding it with the **event** keyword.   
 * You then call or fire the event in the body of whatever function you wish to cause to generate the event.
  > In this case we are using  a function called **deposit** and deposit value in wei.
 * You may fire events from any function using the **emit** keyword.




##### **Deployment**
![Deployment](https://user-images.githubusercontent.com/9979182/56020776-8e0e8480-5d25-11e9-9d4b-460002e8ed38.png)
 > We are sending transactions in web3js, strings of numbers are encoded to bytes as if they're numerical values. In this example: "32884794" is encoded as  "0x3332383834373934".


 ![triggered event](https://user-images.githubusercontent.com/9979182/56021198-75eb3500-5d26-11e9-8b1d-850b42eb626d.png)
