FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/web_common/msg"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/joint_states_web.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_joint_states_web.lisp"
  "../msg_gen/lisp/min_max_joint.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_min_max_joint.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
