# Incorrect Event Emission Order in Ownable Contract

This repository demonstrates a common error in Solidity smart contracts: incorrect event emission order.  The `Ownable` contract's `transferOwnership` function emits the `OwnershipTransferred` event *before* checking the success of the ownership transfer. This can lead to situations where the event indicates ownership transfer even when the transfer failed.

## Bug Description
The primary issue lies in the order of operations in the `transferOwnership` function.  The `OwnershipTransferred` event is emitted before the actual ownership is changed. If the transfer fails (e.g., due to a revert in the underlying logic), the event is still emitted, which is misleading. 

## Solution
The solution is to reorder the operations in the `transferOwnership` function: emit the event *after* successfully changing ownership. This ensures the event reflects the actual state of the contract.