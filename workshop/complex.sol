pragma solidity ^0.5.9;
pragma experimental "ABIEncoderV2";
contract complexSol {
	struct cx {
		int256 x;
		int256 y;
	}
	cx result;
	function complexAddition(cx memory a, cx memory b) public view returns(cx memory){
		cx memory res;
		res.x = a.x + b.x;
		res.y = a.y + b.y;
		return res;
	}
}
