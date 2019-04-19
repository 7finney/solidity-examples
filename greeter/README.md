## **Greeter contract**

This is a simple Greeting contract.



##### **Compiled contract**

  ![compilation](https://user-images.githubusercontent.com/9979182/55880256-f2163900-5bbd-11e9-8283-52eb72e768b4.png)


* You'll notice that there are two different contracts in this code: *"Mortal"* and *"Greeter"*.

* This is because Solidity (the high level contract language we are using) has inheritance, meaning that one contract can inherit characteristics of another.

* This is very useful to simplify coding as common traits of contracts don't need to be rewritten every time, and all contracts can be written in smaller, more readable chunks.

##### **Deployment**
* Set the string to **Hello World** and supply enough gas to the contract to be executed.

  ![deployment](https://user-images.githubusercontent.com/9979182/55880318-16721580-5bbe-11e9-89d2-d187aa10a76d.png)

* Then click **Deploy to blockchain** to deploy the contract into the test network.

  ![deployed contract](https://user-images.githubusercontent.com/9979182/55884780-4c1afc80-5bc6-11e9-9efe-27bd83b717e3.png)



##### **Contract usage**
* Click **greet** to view the string you have set before deployment.

  ![greeting](https://user-images.githubusercontent.com/9979182/55880414-44575a00-5bbe-11e9-8278-8368d359ad8b.png)
