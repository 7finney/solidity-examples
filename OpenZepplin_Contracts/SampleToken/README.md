## **Sample Token**

Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
> Note they can later distribute these tokens as they wish using `transfer` and other `ERC20` functions.




#### **Deployed Token**

![deployedToken](https://user-images.githubusercontent.com/9979182/55703358-065c0980-59f7-11e9-9256-d859ec6ec586.png)


#### **Contract usage**

* Click **name** to view the name of the token.
* Click **symbol** to view the token symbol.
* Click **INITIAL_SUPPLY** to view the initial supply of the token.

![contractUsage_1](https://user-images.githubusercontent.com/9979182/55703752-19230e00-59f8-11e9-8559-f6e81e9a1434.png)

You can approve a specific account holder with fixed number of token by entering the address in **spender address** and value in **value uint256**.

You can increase the allowance of approved account by using **increaseAllowance** function.

![approve](https://user-images.githubusercontent.com/9979182/55704767-a1a2ae00-59fa-11e9-978e-0382274e819a.png)

Using **transferFrom** function you can also transfer token to another account.

![transferFrom](https://user-images.githubusercontent.com/9979182/55726639-e8f66200-5a2d-11e9-85ea-a5dbdf0480af.png)
