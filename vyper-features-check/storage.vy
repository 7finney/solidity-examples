# 0x228df91d36A6E452270Cd9AeDc40C4502841b1fb
state_var: uint256

@external
def set_var(_value: uint256) -> bool:
    self.state_var = _value
    return True

@external
@view
def get_var() -> uint256:
    return self.state_var