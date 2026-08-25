vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO modelingevolution/rocket-welder-sdk
    REF v${VERSION}
    SHA512 6e41e23ee2d13b881374ec0e91b0568aa321228059be200727449eea6544f8922f58973b595da86500b6be97b30b426699f94e9871f99497898d0aa9bf0bbbd1
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