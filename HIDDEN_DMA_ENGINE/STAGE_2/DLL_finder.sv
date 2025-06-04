/*
 * This module integrates two main submodules responsible for finding key memory addresses:
 * 
 * - The analyzer submodule performs step-by-step discovery of the process descriptor and target module virtual pointer.
 * - The helper submodule manages PCIe memory read requests, handles virtual-to-physical address translation, and arbitrates TX access.
 * 
 * Together, they coordinate to identify and output both the physical address of a key control structure and the virtual pointer to a target module.
 *
 * Code has been redacted for ethical and security reasons.
 * 153 LOC
 */
