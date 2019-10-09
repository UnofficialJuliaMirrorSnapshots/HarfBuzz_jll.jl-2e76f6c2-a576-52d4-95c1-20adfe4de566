# Autogenerated wrapper script for HarfBuzz_jll for i686-linux-musl
export libharfbuzz, libharfbuzz_gobject, libharfbuzz_subset

using Graphite2_jll
using Libffi_jll
using Gettext_jll
using Glib_jll
using FreeType2_jll
using Fontconfig_jll
using Cairo_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libharfbuzz`
const libharfbuzz_splitpath = ["lib", "libharfbuzz.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_path = ""

# libharfbuzz-specific global declaration
# This will be filled out by __init__()
libharfbuzz_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz = "libharfbuzz.so.0"


# Relative path to `libharfbuzz_gobject`
const libharfbuzz_gobject_splitpath = ["lib", "libharfbuzz-gobject.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_gobject_path = ""

# libharfbuzz_gobject-specific global declaration
# This will be filled out by __init__()
libharfbuzz_gobject_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz_gobject = "libharfbuzz-gobject.so.0"


# Relative path to `libharfbuzz_subset`
const libharfbuzz_subset_splitpath = ["lib", "libharfbuzz-subset.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libharfbuzz_subset_path = ""

# libharfbuzz_subset-specific global declaration
# This will be filled out by __init__()
libharfbuzz_subset_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libharfbuzz_subset = "libharfbuzz-subset.so.0"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Graphite2_jll.PATH_list, Libffi_jll.PATH_list, Gettext_jll.PATH_list, Glib_jll.PATH_list, FreeType2_jll.PATH_list, Fontconfig_jll.PATH_list, Cairo_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Graphite2_jll.LIBPATH_list, Libffi_jll.LIBPATH_list, Gettext_jll.LIBPATH_list, Glib_jll.LIBPATH_list, FreeType2_jll.LIBPATH_list, Fontconfig_jll.LIBPATH_list, Cairo_jll.LIBPATH_list,))

    global libharfbuzz_path = abspath(joinpath(artifact"HarfBuzz", libharfbuzz_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_handle = dlopen(libharfbuzz_path)
    push!(LIBPATH_list, dirname(libharfbuzz_path))

    global libharfbuzz_gobject_path = abspath(joinpath(artifact"HarfBuzz", libharfbuzz_gobject_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_gobject_handle = dlopen(libharfbuzz_gobject_path)
    push!(LIBPATH_list, dirname(libharfbuzz_gobject_path))

    global libharfbuzz_subset_path = abspath(joinpath(artifact"HarfBuzz", libharfbuzz_subset_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libharfbuzz_subset_handle = dlopen(libharfbuzz_subset_path)
    push!(LIBPATH_list, dirname(libharfbuzz_subset_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

