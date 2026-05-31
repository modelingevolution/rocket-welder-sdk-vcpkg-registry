vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO modelingevolution/rocket-welder-sdk
    REF v${VERSION}
    SHA512 44eeadb93bbb412eb10905b17ede95135438503f3c48def22ec6714622f7c040c09f556b8ce93cd9000988c580209493d95d6624d5b5edd84a88a087e808aecb
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