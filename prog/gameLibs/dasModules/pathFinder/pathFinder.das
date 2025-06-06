require pathfinder
require ecs

let
  INVALID_POLY_REF : dtPolyRef = 0ul

[generic]
def find_path(var req : FindRequest | #; step_size, slop : float) : FindPathResult
  return find_path(req, step_size, slop) <| $ [unused_argument(_)] (_ : array<float3>#) {}

[generic]
def find_path(var req : FindRequest | #; step_size, slop : float; subexpr : block<(data : array<float3>#) : void>) : FindPathResult
  return find_path(req, step_size, slop, subexpr)

[generic]
def find_path(var req : FindRequest | #; step_size : float; subexpr : block<(data : array<float3>#) : void>) : FindPathResult
  return find_path(req, step_size, 2.5, subexpr)

[generic]
def find_path(var req : FindRequest | #; subexpr : block<(data : array<float3>#) : void>) : FindPathResult
  return find_path(req, 10.0, 2.5, subexpr)


[generic]
def find_path(start_pos, end_pos, extents : float3; step_size = 10.; slop = 2.5; custom_nav : CustomNav const? const = null) : FindPathResult
  return find_path(start_pos, end_pos, extents, step_size, slop, custom_nav) <| $ [unused_argument(_)] (_ : array<float3>#) {}

[generic]
def find_path(start_pos, end_pos, extents : float3; step_size, slop : float; custom_nav : CustomNav; subexpr : block<(data : array<float3>#) : void>) : FindPathResult
  return find_path(start_pos, end_pos, extents, step_size, slop, custom_nav, subexpr)

[generic]
def find_path(start_pos, end_pos, extents : float3; step_size, slop : float; subexpr : block<(data : array<float3>#) : void>) : FindPathResult
  return find_path(start_pos, end_pos, extents, step_size, slop, null, subexpr)

[generic]
def find_path(start_pos, end_pos, extents : float3; step_size : float; subexpr : block<(data : array<float3>#) : void>) : FindPathResult
  return find_path(start_pos, end_pos, extents, step_size, 2.5, null, subexpr)

[generic]
def find_path(start_pos, end_pos, extents : float3; subexpr : block<(data : array<float3>#) : void>) : FindPathResult
  return find_path(start_pos, end_pos, extents, 10.0, 2.5, null, subexpr)


[generic]
def find_random_point_around_circle(pos : float3; radius : float; var res : float3&) : bool
  return find_random_point_around_circle(pos, radius, res, /*curtom_nav*/null)


[generic]
def check_path(start_pos, end_pos, extents : float3; horz_threshold, max_vert_dist : float; custom_nav : CustomNav const? const = null;
               incl_flags : int = int(PolyFlag POLYFLAG_GROUND) | int(PolyFlag POLYFLAG_JUMP) | int(PolyFlag POLYFLAG_LADDER) | int(PolyFlag POLYFLAG_OBSTACLE); excl_flags : int = int(PolyFlag POLYFLAG_BLOCKED)) : bool
  return check_path(start_pos, end_pos, extents, horz_threshold, max_vert_dist, custom_nav,
                    incl_flags, excl_flags)


[generic]
def check_path_ex(nav_mesh_idx : int; start_pos, end_pos, extents : float3; horz_threshold, max_vert_dist : float; custom_nav : CustomNav const? const = null;
                  incl_flags : int = int(PolyFlag POLYFLAG_GROUND) | int(PolyFlag POLYFLAG_JUMP) | int(PolyFlag POLYFLAG_LADDER) | int(PolyFlag POLYFLAG_OBSTACLE); excl_flags : int = int(PolyFlag POLYFLAG_BLOCKED)) : bool
  return check_path_ex(nav_mesh_idx, start_pos, end_pos, extents, horz_threshold, max_vert_dist, custom_nav,
                    incl_flags, excl_flags)


[generic]
def change_navpolys_flags_in_box(nav_mesh_idx : int; transform : float3x4; set_flags : uint16; reset_flags : uint16; incl_flags : uint16; excl_flags : uint16; ignore_area : int = -1; check_only_centers : bool = true)
  change_navpolys_flags_in_box(nav_mesh_idx, transform, set_flags, reset_flags, incl_flags, excl_flags, ignore_area, check_only_centers)


[generic]
def change_navpolys_flags_in_poly(nav_mesh_idx : int; points : Point2List; set_flags : uint16; reset_flags : uint16; incl_flags : uint16; excl_flags : uint16; ignore_area : int = -1; max_length_to_check_only_center : float = FLT_MAX)
  change_navpolys_flags_in_poly(nav_mesh_idx, points, set_flags, reset_flags, incl_flags, excl_flags, ignore_area, max_length_to_check_only_center)
