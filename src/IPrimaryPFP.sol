// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.20;

/**
 * @title Set primary PFP for an address like primary ENS.
 * @dev owner or delegated/warmed address can set primary PFP, only owner can remove the primary PFP.
 */
interface IPrimaryPFP {
    struct PFP {
        address contract_;
        uint256 tokenId;
    }

    // @notice Emitted when a primary PFP set for the owner.
    event PrimarySet(address indexed to, address indexed contract_, uint256 tokenId);

    // @notice Emitted when a primary collection PFP set for the owner.
    event CollectionPrimarySet(address indexed to, address indexed contract_, uint256 tokenId);

    // @notice Emitted when a primary PFP set from delegate.cash.
    event PrimarySetByDelegateCash(address indexed to, address indexed contract_, uint256 tokenId);

    // @notice Emitted when a primary collection PFP set from delegate.cash.
    event CollectionPrimarySetByDelegateCash(address indexed to, address indexed contract_, uint256 tokenId);

    // @notice Emitted when a primary PFP removed.
    event PrimaryRemoved(address indexed from, address indexed contract_, uint256 tokenId);

    // @notice Emitted when a primary collection PFP removed.
    event CollectionPrimaryRemoved(address indexed from, address indexed contract_, uint256 tokenId);

    /**
     * @notice Set primary PFP for an address.
     * Only the PFP owner can set it.
     *
     * @param contract_ The collection address of the PFP
     * @param tokenId The tokenId of the PFP
     */
    function setPrimary(address contract_, uint256 tokenId) external;

    /**
     * @notice Set collection primary PFP for an address.
     * Only the PFP owner can set it.
     *
     * @param contract_ The collection address of the PFP
     * @param tokenId The tokenId of the collection PFP
     */
    function setCollectionPrimary(address contract_, uint256 tokenId) external;

    /**
     * @notice Set primary PFP for an address from a delegated address from delegate.cash.
     * Only the delegated address from delegate cash can set it.
     *
     * @param contract_ The collection address of the PFP
     * @param tokenId The tokenId of the PFP
     */
    function setPrimaryByDelegateCash(address contract_, uint256 tokenId) external;

    /**
     * @notice Set collection primary PFP for an address from a delegated address from delegate.cash.
     * Only the delegated address from delegate cash can set it.
     *
     * @param contract_ The collection address of the PFP
     * @param tokenId The tokenId of the PFP
     */
    function setCollectionPrimaryByDelegateCash(address contract_, uint256 tokenId) external;

    /**
     * @notice Remove the primary PFP setting.
     * Only the PFP owner can remove it.
     *
     * @param contract_ The collection address of the PFP
     * @param tokenId The tokenId of the PFP
     */
    function removePrimary(address contract_, uint256 tokenId) external;

    /**
     * @notice Remove the collection primary PFP setting.
     * Only the PFP owner can remove it.
     *
     * @param contract_ The collection address of the PFP
     * @param tokenId The tokenId of the PFP
     */
    function removeCollectionPrimary(address contract_, uint256 tokenId) external;

    /**
     * @notice Get primary PFP for an address.
     * Returns address(0) & 0 if this addr has no primary PFP.
     *
     * @param addr The address for querying primary PFP
     */
    function getPrimary(address addr) external view returns (address, uint256);

    /**
     * @notice whether one has a collection primary PFP
     * Returns false if they don't have
     *
     * @param addr The address for querying collection primary PFP
     * @param contract_ The collection address of the PFP
     */
    function hasCollectionPrimary(address addr, address contract_) external view returns (bool);

    /**
     * @notice Get collection primary PFP id for an address.
     * Returns 0 if this addr has no primary PFP.
     *
     * @param addr The address for querying primary PFP
     * @param contract_ The collection address of the PFP
     */
    function getCollectionPrimary(address addr, address contract_) external view returns (uint256);

    /**
     * @notice Get primary PFPs for an array of addresses.
     * Returns a list of PFP struct for addrs.
     *
     * @param addrs The addresses for querying primary PFP
     */
    function getPrimaries(address[] calldata addrs) external view returns (PFP[] memory);

    /**
     * @notice Get owner of primary PFP.
     * Returns delegated address if this PFP is bind to delegate, returns address(0) if the PFP is not bound to any address.
     *
     * @param contract_ The collection address of the PFP
     * @param tokenId The tokenId of the PFP
     */
    function getPrimaryAddress(address contract_, uint256 tokenId) external view returns (address);
}
