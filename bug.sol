function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}

// The problem is in the above function. It emits the OwnershipTransferred event before checking if the transfer is successful. 
// This can lead to a situation where the event is emitted even if the transfer fails. This can be confusing for users and can lead to unexpected behavior.