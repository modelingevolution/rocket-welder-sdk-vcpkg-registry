vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO modelingevolution/rocket-welder-sdk
    REF v${VERSION}
    SHA512 749f1db50dee3f86e3b577e4becd339c4ea75c3443f26c617bc9799398222308151285a14265f642b3bc80a100ef72fcba1cab605f20176b3ebc2b691d6a0163
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}/cpp"
    OPTIONS
        -DBUILD_EXAMPLES=OFF
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/rocket-welder-sdk)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")