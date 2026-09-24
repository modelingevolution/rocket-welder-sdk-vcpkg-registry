vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO modelingevolution/rocket-welder-sdk
    REF v${VERSION}
    SHA512 a851c94c80cccb6a99517719d60a8c4610b771a2d9fe19384a254044fa73d0b29ee635781719e45dbf7ff21d5441b35e581b3b184754e85a40ad12ddf55a566d
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