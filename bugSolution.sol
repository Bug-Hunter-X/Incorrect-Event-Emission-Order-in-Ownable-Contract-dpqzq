function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  _owner = newOwner; // Change ownership first
  emit OwnershipTransferred(_owner, newOwner); // Then emit the event
}

//This version emits the OwnershipTransferred event only after the ownership is successfully transferred. 