vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO modelingevolution/rocket-welder-sdk
    REF v${VERSION}
    SHA512 9a34e8a0910810082bacb97795827fd7a65fbdc9003b9ceef2e811203563f9bbb14198cdbd03466b829f7b673f33df5af2441209062f006a75d5c58dad2c4259
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