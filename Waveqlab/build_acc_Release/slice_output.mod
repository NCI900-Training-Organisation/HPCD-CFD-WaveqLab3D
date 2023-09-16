V34 :0x34 slice_output
16 slice_output.f90 S624 0
07/15/2023  10:30:32
use mpi public 0 direct
use mpi3dio public 0 direct
use iso_fortran_env private
use mpi3dcomm private
use iso_c_binding private
use datatypes private
use mpi3dbasic private
enduse
D 58 23 6 1 11 54 0 0 0 0 0
 0 54 11 11 54 54
D 61 23 6 1 11 54 0 0 0 0 0
 0 54 11 11 54 54
D 64 23 6 1 11 54 0 0 0 0 0
 0 54 11 11 54 54
D 67 23 6 1 11 54 0 0 0 0 0
 0 54 11 11 54 54
D 70 23 6 1 11 55 0 0 0 0 0
 0 55 11 11 55 55
D 73 23 6 1 11 55 0 0 0 0 0
 0 55 11 11 55 55
D 76 26 689 8 688 7
D 85 26 692 8 691 7
D 2671 26 7954 176 7953 3
D 2952 26 8454 1616 8453 7
D 2988 22 7
D 2990 22 7
D 2992 22 7
D 2994 22 7
D 2996 22 7
D 3001 26 8512 288 8507 7
D 3013 22 7
D 3018 26 8520 312 8519 7
D 3033 22 7
D 3038 26 8537 576 8532 7
D 3056 22 7
D 3058 22 7
D 3063 26 8557 2640 8553 7
D 3135 22 7
D 3137 22 7
D 3139 22 7
D 3141 22 7
D 3143 22 7
D 3145 22 7
D 3147 22 7
D 3149 22 7
D 3151 22 7
D 3153 22 7
D 3155 22 7
D 3169 26 8654 3048 8653 7
D 3297 22 7
D 3299 22 7
D 3301 22 7
D 3303 22 7
D 3305 22 7
D 3307 22 7
D 3309 22 7
D 3311 22 7
D 3313 22 7
D 3315 22 7
D 3317 22 7
D 3319 22 7
D 3321 22 7
D 3323 22 7
D 3325 22 7
D 3327 22 7
D 3329 22 7
D 3331 22 7
D 3333 22 7
D 3335 22 7
D 3340 26 8784 760 8783 7
D 3358 22 7
D 3360 22 7
D 3365 26 8808 392 8807 7
D 3383 22 7
D 3385 22 7
D 3390 26 8826 26888 8825 7
D 3408 26 8847 2248 8846 7
D 3468 22 7
D 3470 22 7
D 3472 22 7
D 3474 22 7
D 3476 22 7
D 3478 22 7
D 3480 22 7
D 3482 22 7
D 3484 22 7
D 3489 26 8927 4104 8926 7
D 3546 22 7
D 3548 22 7
D 3550 22 7
D 3552 22 7
D 3554 22 7
D 3556 22 7
D 3558 22 7
D 3560 22 7
D 3574 26 9003 1112 9002 7
D 3628 22 7
D 3630 22 7
D 3632 22 7
D 3634 22 7
D 3636 22 7
D 3638 22 7
D 3640 22 7
D 3645 26 9057 564 9056 3
D 3654 26 9066 6576 9065 7
D 3725 23 10 4 2660 2681 0 1 0 0 1
 2661 2664 2665 2661 2664 2662
 2666 2669 2670 2666 2669 2667
 2671 2674 2675 2671 2674 2672
 2676 2679 2680 2676 2679 2677
D 3728 23 7 1 0 1459 0 0 0 0 0
 0 1459 0 11 1459 0
S 624 24 0 0 0 10 1 0 5013 10005 0 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 slice_output
S 627 23 0 0 0 10 7887 624 5041 4 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 pw
S 628 23 0 0 0 10 7889 624 5044 4 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ps
S 629 23 0 0 0 6 7888 624 5047 4 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mpi_real_pw
S 630 23 0 0 0 6 7890 624 5059 4 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mpi_real_ps
S 631 23 0 0 0 10 7918 624 5071 4 0 A 0 0 0 0 B 400000 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 error
S 634 23 0 0 0 10 9056 624 5095 4 0 A 0 0 0 0 B 400000 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 slice_type
S 636 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 639 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 644 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 645 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 646 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 668 7 22 iso_fortran_env integer_kinds$ac
R 670 7 24 iso_fortran_env logical_kinds$ac
R 672 7 26 iso_fortran_env real_kinds$ac
R 688 25 6 iso_c_binding c_ptr
R 689 5 7 iso_c_binding val c_ptr
R 691 25 9 iso_c_binding c_funptr
R 692 5 10 iso_c_binding val c_funptr
R 726 6 44 iso_c_binding c_null_ptr$ac
R 728 6 46 iso_c_binding c_null_funptr$ac
R 729 26 47 iso_c_binding ==
R 731 26 49 iso_c_binding !=
S 834 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 835 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 7887 16 6 mpi3dbasic pw
R 7888 16 7 mpi3dbasic mpi_real_pw
R 7889 16 8 mpi3dbasic ps
R 7890 16 9 mpi3dbasic mpi_real_ps
R 7918 14 37 mpi3dbasic error
S 7936 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7937 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7938 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7939 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7940 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7941 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7942 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7943 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7944 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7945 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7946 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7947 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 27 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7948 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7949 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7950 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
S 7951 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 33 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 7953 25 2 mpi3dcomm cartesian3d_t
R 7954 5 3 mpi3dcomm nb cartesian3d_t
R 7955 5 4 mpi3dcomm nq cartesian3d_t
R 7956 5 5 mpi3dcomm mq cartesian3d_t
R 7957 5 6 mpi3dcomm pq cartesian3d_t
R 7958 5 7 mpi3dcomm mbq cartesian3d_t
R 7959 5 8 mpi3dcomm pbq cartesian3d_t
R 7960 5 9 mpi3dcomm lnq cartesian3d_t
R 7961 5 10 mpi3dcomm nr cartesian3d_t
R 7962 5 11 mpi3dcomm mr cartesian3d_t
R 7963 5 12 mpi3dcomm pr cartesian3d_t
R 7964 5 13 mpi3dcomm mbr cartesian3d_t
R 7965 5 14 mpi3dcomm pbr cartesian3d_t
R 7966 5 15 mpi3dcomm lnr cartesian3d_t
R 7967 5 16 mpi3dcomm ns cartesian3d_t
R 7968 5 17 mpi3dcomm ms cartesian3d_t
R 7969 5 18 mpi3dcomm ps cartesian3d_t
R 7970 5 19 mpi3dcomm mbs cartesian3d_t
R 7971 5 20 mpi3dcomm pbs cartesian3d_t
R 7972 5 21 mpi3dcomm lns cartesian3d_t
R 7973 5 22 mpi3dcomm comm cartesian3d_t
R 7974 5 23 mpi3dcomm rank cartesian3d_t
R 7975 5 24 mpi3dcomm size_q cartesian3d_t
R 7976 5 25 mpi3dcomm size_r cartesian3d_t
R 7977 5 26 mpi3dcomm size_s cartesian3d_t
R 7978 5 27 mpi3dcomm coord cartesian3d_t
R 7979 5 28 mpi3dcomm rank_mq cartesian3d_t
R 7980 5 29 mpi3dcomm rank_pq cartesian3d_t
R 7981 5 30 mpi3dcomm rank_mr cartesian3d_t
R 7982 5 31 mpi3dcomm rank_pr cartesian3d_t
R 7983 5 32 mpi3dcomm rank_ms cartesian3d_t
R 7984 5 33 mpi3dcomm rank_ps cartesian3d_t
R 7985 5 34 mpi3dcomm line_q cartesian3d_t
R 7986 5 35 mpi3dcomm line_r cartesian3d_t
R 7987 5 36 mpi3dcomm line_s cartesian3d_t
R 7988 5 37 mpi3dcomm block_q cartesian3d_t
R 7989 5 38 mpi3dcomm block_r cartesian3d_t
R 7990 5 39 mpi3dcomm block_s cartesian3d_t
R 7991 5 40 mpi3dcomm block3d_qr cartesian3d_t
R 7992 5 41 mpi3dcomm block3d_qs cartesian3d_t
R 7993 5 42 mpi3dcomm block3d_rs cartesian3d_t
R 7994 5 43 mpi3dcomm array_w cartesian3d_t
R 7995 5 44 mpi3dcomm array_s cartesian3d_t
S 8439 3 0 0 0 7 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7
R 8453 25 13 datatypes block_grid_t
R 8454 5 14 datatypes c block_grid_t
R 8455 5 15 datatypes hq block_grid_t
R 8456 5 16 datatypes hr block_grid_t
R 8457 5 17 datatypes hs block_grid_t
R 8458 5 18 datatypes bhq block_grid_t
R 8459 5 19 datatypes bhr block_grid_t
R 8460 5 20 datatypes bhs block_grid_t
R 8465 5 25 datatypes x block_grid_t
R 8466 5 26 datatypes x$sd block_grid_t
R 8467 5 27 datatypes x$p block_grid_t
R 8468 5 28 datatypes x$o block_grid_t
R 8474 5 34 datatypes metricx block_grid_t
R 8475 5 35 datatypes metricx$sd block_grid_t
R 8476 5 36 datatypes metricx$p block_grid_t
R 8477 5 37 datatypes metricx$o block_grid_t
R 8479 5 39 datatypes metricy block_grid_t
R 8484 5 44 datatypes metricy$sd block_grid_t
R 8485 5 45 datatypes metricy$p block_grid_t
R 8486 5 46 datatypes metricy$o block_grid_t
R 8488 5 48 datatypes metricz block_grid_t
R 8493 5 53 datatypes metricz$sd block_grid_t
R 8494 5 54 datatypes metricz$p block_grid_t
R 8495 5 55 datatypes metricz$o block_grid_t
R 8500 5 60 datatypes j block_grid_t
R 8501 5 61 datatypes j$sd block_grid_t
R 8502 5 62 datatypes j$p block_grid_t
R 8503 5 63 datatypes j$o block_grid_t
R 8507 25 67 datatypes block_material
R 8512 5 72 datatypes m block_material
R 8513 5 73 datatypes m$sd block_material
R 8514 5 74 datatypes m$p block_material
R 8515 5 75 datatypes m$o block_material
R 8519 25 79 datatypes block_plastic
R 8520 5 80 datatypes mu_beta_eta block_plastic
R 8525 5 85 datatypes p block_plastic
R 8526 5 86 datatypes p$sd block_plastic
R 8527 5 87 datatypes p$p block_plastic
R 8528 5 88 datatypes p$o block_plastic
R 8532 25 92 datatypes block_fields
R 8537 5 97 datatypes f block_fields
R 8538 5 98 datatypes f$sd block_fields
R 8539 5 99 datatypes f$p block_fields
R 8540 5 100 datatypes f$o block_fields
R 8546 5 106 datatypes df block_fields
R 8547 5 107 datatypes df$sd block_fields
R 8548 5 108 datatypes df$p block_fields
R 8549 5 109 datatypes df$o block_fields
R 8553 25 113 datatypes block_boundary
R 8557 5 117 datatypes x block_boundary
R 8558 5 118 datatypes x$sd block_boundary
R 8559 5 119 datatypes x$p block_boundary
R 8560 5 120 datatypes x$o block_boundary
R 8565 5 125 datatypes m block_boundary
R 8566 5 126 datatypes m$sd block_boundary
R 8567 5 127 datatypes m$p block_boundary
R 8568 5 128 datatypes m$o block_boundary
R 8573 5 133 datatypes n_l block_boundary
R 8574 5 134 datatypes n_l$sd block_boundary
R 8575 5 135 datatypes n_l$p block_boundary
R 8576 5 136 datatypes n_l$o block_boundary
R 8578 5 138 datatypes n_m block_boundary
R 8582 5 142 datatypes n_m$sd block_boundary
R 8583 5 143 datatypes n_m$p block_boundary
R 8584 5 144 datatypes n_m$o block_boundary
R 8586 5 146 datatypes n_n block_boundary
R 8590 5 150 datatypes n_n$sd block_boundary
R 8591 5 151 datatypes n_n$p block_boundary
R 8592 5 152 datatypes n_n$o block_boundary
R 8597 5 157 datatypes f block_boundary
R 8598 5 158 datatypes f$sd block_boundary
R 8599 5 159 datatypes f$p block_boundary
R 8600 5 160 datatypes f$o block_boundary
R 8605 5 165 datatypes df block_boundary
R 8606 5 166 datatypes df$sd block_boundary
R 8607 5 167 datatypes df$p block_boundary
R 8608 5 168 datatypes df$o block_boundary
R 8613 5 173 datatypes fopp block_boundary
R 8614 5 174 datatypes fopp$sd block_boundary
R 8615 5 175 datatypes fopp$p block_boundary
R 8616 5 176 datatypes fopp$o block_boundary
R 8621 5 181 datatypes mopp block_boundary
R 8622 5 182 datatypes mopp$sd block_boundary
R 8623 5 183 datatypes mopp$p block_boundary
R 8624 5 184 datatypes mopp$o block_boundary
R 8629 5 189 datatypes u block_boundary
R 8630 5 190 datatypes u$sd block_boundary
R 8631 5 191 datatypes u$p block_boundary
R 8632 5 192 datatypes u$o block_boundary
R 8634 5 194 datatypes du block_boundary
R 8638 5 198 datatypes du$sd block_boundary
R 8639 5 199 datatypes du$p block_boundary
R 8640 5 200 datatypes du$o block_boundary
R 8653 25 213 datatypes moment_tensor
R 8654 5 214 datatypes use_moment_tensor moment_tensor
R 8656 5 216 datatypes source_type moment_tensor
R 8657 5 217 datatypes source_type$sd moment_tensor
R 8658 5 218 datatypes source_type$p moment_tensor
R 8659 5 219 datatypes source_type$o moment_tensor
R 8662 5 222 datatypes mxx moment_tensor
R 8663 5 223 datatypes mxx$sd moment_tensor
R 8664 5 224 datatypes mxx$p moment_tensor
R 8665 5 225 datatypes mxx$o moment_tensor
R 8667 5 227 datatypes mxy moment_tensor
R 8669 5 229 datatypes mxy$sd moment_tensor
R 8670 5 230 datatypes mxy$p moment_tensor
R 8671 5 231 datatypes mxy$o moment_tensor
R 8673 5 233 datatypes mxz moment_tensor
R 8675 5 235 datatypes mxz$sd moment_tensor
R 8676 5 236 datatypes mxz$p moment_tensor
R 8677 5 237 datatypes mxz$o moment_tensor
R 8679 5 239 datatypes myy moment_tensor
R 8681 5 241 datatypes myy$sd moment_tensor
R 8682 5 242 datatypes myy$p moment_tensor
R 8683 5 243 datatypes myy$o moment_tensor
R 8685 5 245 datatypes myz moment_tensor
R 8687 5 247 datatypes myz$sd moment_tensor
R 8688 5 248 datatypes myz$p moment_tensor
R 8689 5 249 datatypes myz$o moment_tensor
R 8691 5 251 datatypes mzz moment_tensor
R 8693 5 253 datatypes mzz$sd moment_tensor
R 8694 5 254 datatypes mzz$p moment_tensor
R 8695 5 255 datatypes mzz$o moment_tensor
R 8698 5 258 datatypes location_x moment_tensor
R 8699 5 259 datatypes location_x$sd moment_tensor
R 8700 5 260 datatypes location_x$p moment_tensor
R 8701 5 261 datatypes location_x$o moment_tensor
R 8703 5 263 datatypes location_y moment_tensor
R 8705 5 265 datatypes location_y$sd moment_tensor
R 8706 5 266 datatypes location_y$p moment_tensor
R 8707 5 267 datatypes location_y$o moment_tensor
R 8709 5 269 datatypes location_z moment_tensor
R 8711 5 271 datatypes location_z$sd moment_tensor
R 8712 5 272 datatypes location_z$p moment_tensor
R 8713 5 273 datatypes location_z$o moment_tensor
R 8716 5 276 datatypes near_x moment_tensor
R 8717 5 277 datatypes near_x$sd moment_tensor
R 8718 5 278 datatypes near_x$p moment_tensor
R 8719 5 279 datatypes near_x$o moment_tensor
R 8721 5 281 datatypes near_y moment_tensor
R 8723 5 283 datatypes near_y$sd moment_tensor
R 8724 5 284 datatypes near_y$p moment_tensor
R 8725 5 285 datatypes near_y$o moment_tensor
R 8727 5 287 datatypes near_z moment_tensor
R 8729 5 289 datatypes near_z$sd moment_tensor
R 8730 5 290 datatypes near_z$p moment_tensor
R 8731 5 291 datatypes near_z$o moment_tensor
R 8733 5 293 datatypes alpha moment_tensor
R 8735 5 295 datatypes alpha$sd moment_tensor
R 8736 5 296 datatypes alpha$p moment_tensor
R 8737 5 297 datatypes alpha$o moment_tensor
R 8740 5 300 datatypes near_phys_x moment_tensor
R 8741 5 301 datatypes near_phys_x$sd moment_tensor
R 8742 5 302 datatypes near_phys_x$p moment_tensor
R 8743 5 303 datatypes near_phys_x$o moment_tensor
R 8745 5 305 datatypes near_phys_y moment_tensor
R 8747 5 307 datatypes near_phys_y$sd moment_tensor
R 8748 5 308 datatypes near_phys_y$p moment_tensor
R 8749 5 309 datatypes near_phys_y$o moment_tensor
R 8751 5 311 datatypes near_phys_z moment_tensor
R 8753 5 313 datatypes near_phys_z$sd moment_tensor
R 8754 5 314 datatypes near_phys_z$p moment_tensor
R 8755 5 315 datatypes near_phys_z$o moment_tensor
R 8761 5 321 datatypes exact moment_tensor
R 8762 5 322 datatypes exact$sd moment_tensor
R 8763 5 323 datatypes exact$p moment_tensor
R 8764 5 324 datatypes exact$o moment_tensor
R 8767 5 327 datatypes duration moment_tensor
R 8768 5 328 datatypes duration$sd moment_tensor
R 8769 5 329 datatypes duration$p moment_tensor
R 8770 5 330 datatypes duration$o moment_tensor
R 8772 5 332 datatypes t_init moment_tensor
R 8774 5 334 datatypes t_init$sd moment_tensor
R 8775 5 335 datatypes t_init$p moment_tensor
R 8776 5 336 datatypes t_init$o moment_tensor
R 8778 5 338 datatypes order moment_tensor
R 8779 5 339 datatypes block_id moment_tensor
R 8780 5 340 datatypes num_tensor moment_tensor
R 8783 25 343 datatypes block_pml
R 8784 5 344 datatypes pml block_pml
R 8785 5 345 datatypes n_pml block_pml
R 8786 5 346 datatypes c block_pml
R 8791 5 351 datatypes q block_pml
R 8792 5 352 datatypes q$sd block_pml
R 8793 5 353 datatypes q$p block_pml
R 8794 5 354 datatypes q$o block_pml
R 8800 5 360 datatypes dq block_pml
R 8801 5 361 datatypes dq$sd block_pml
R 8802 5 362 datatypes dq$p block_pml
R 8803 5 363 datatypes dq$o block_pml
R 8807 25 367 datatypes block_sbp
R 8808 5 368 datatypes bnd_pts block_sbp
R 8811 5 371 datatypes dp block_sbp
R 8812 5 372 datatypes dp$sd block_sbp
R 8813 5 373 datatypes dp$p block_sbp
R 8814 5 374 datatypes dp$o block_sbp
R 8818 5 378 datatypes dm block_sbp
R 8819 5 379 datatypes dm$sd block_sbp
R 8820 5 380 datatypes dm$p block_sbp
R 8821 5 381 datatypes dm$o block_sbp
R 8825 25 385 datatypes block_type
R 8826 5 386 datatypes id block_type
R 8827 5 387 datatypes physics block_type
R 8828 5 388 datatypes fd_type block_type
R 8829 5 389 datatypes order block_type
R 8830 5 390 datatypes nb block_type
R 8831 5 391 datatypes i block_type
R 8832 5 392 datatypes g block_type
R 8833 5 393 datatypes m block_type
R 8834 5 394 datatypes f block_type
R 8835 5 395 datatypes mt block_type
R 8836 5 396 datatypes p block_type
R 8837 5 397 datatypes b block_type
R 8838 5 398 datatypes boundary_vars block_type
R 8839 5 399 datatypes pmlb block_type
R 8840 5 400 datatypes tau0 block_type
R 8841 5 401 datatypes rho_s_p block_type
R 8842 5 402 datatypes sum block_type
R 8843 5 403 datatypes dx block_type
R 8846 25 406 datatypes iface_type
R 8847 5 407 datatypes id iface_type
R 8848 5 408 datatypes im iface_type
R 8849 5 409 datatypes ip iface_type
R 8850 5 410 datatypes direction iface_type
R 8854 5 414 datatypes v iface_type
R 8855 5 415 datatypes v$sd iface_type
R 8856 5 416 datatypes v$p iface_type
R 8857 5 417 datatypes v$o iface_type
R 8859 5 419 datatypes dv iface_type
R 8863 5 423 datatypes dv$sd iface_type
R 8864 5 424 datatypes dv$p iface_type
R 8865 5 425 datatypes dv$o iface_type
R 8870 5 430 datatypes t iface_type
R 8871 5 431 datatypes t$sd iface_type
R 8872 5 432 datatypes t$p iface_type
R 8873 5 433 datatypes t$o iface_type
R 8878 5 438 datatypes s iface_type
R 8879 5 439 datatypes s$sd iface_type
R 8880 5 440 datatypes s$p iface_type
R 8881 5 441 datatypes s$o iface_type
R 8883 5 443 datatypes ds iface_type
R 8887 5 447 datatypes ds$sd iface_type
R 8888 5 448 datatypes ds$p iface_type
R 8889 5 449 datatypes ds$o iface_type
R 8894 5 454 datatypes w iface_type
R 8895 5 455 datatypes w$sd iface_type
R 8896 5 456 datatypes w$p iface_type
R 8897 5 457 datatypes w$o iface_type
R 8899 5 459 datatypes dw iface_type
R 8903 5 463 datatypes dw$sd iface_type
R 8904 5 464 datatypes dw$p iface_type
R 8905 5 465 datatypes dw$o iface_type
R 8910 5 470 datatypes svel iface_type
R 8911 5 471 datatypes svel$sd iface_type
R 8912 5 472 datatypes svel$p iface_type
R 8913 5 473 datatypes svel$o iface_type
R 8918 5 478 datatypes trup iface_type
R 8919 5 479 datatypes trup$sd iface_type
R 8920 5 480 datatypes trup$p iface_type
R 8921 5 481 datatypes trup$o iface_type
R 8923 5 483 datatypes ii iface_type
R 8926 25 486 datatypes fault_type
R 8927 5 487 datatypes handles fault_type
R 8928 5 488 datatypes array_s fault_type
R 8932 5 492 datatypes time_rup fault_type
R 8933 5 493 datatypes time_rup$sd fault_type
R 8934 5 494 datatypes time_rup$p fault_type
R 8935 5 495 datatypes time_rup$o fault_type
R 8940 5 500 datatypes w fault_type
R 8941 5 501 datatypes w$sd fault_type
R 8942 5 502 datatypes w$p fault_type
R 8943 5 503 datatypes w$o fault_type
R 8948 5 508 datatypes slip fault_type
R 8949 5 509 datatypes slip$sd fault_type
R 8950 5 510 datatypes slip$p fault_type
R 8951 5 511 datatypes slip$o fault_type
R 8956 5 516 datatypes svel fault_type
R 8957 5 517 datatypes svel$sd fault_type
R 8958 5 518 datatypes svel$p fault_type
R 8959 5 519 datatypes svel$o fault_type
R 8964 5 524 datatypes u_pluspres fault_type
R 8965 5 525 datatypes u_pluspres$sd fault_type
R 8966 5 526 datatypes u_pluspres$p fault_type
R 8967 5 527 datatypes u_pluspres$o fault_type
R 8969 5 529 datatypes v_pluspres fault_type
R 8973 5 533 datatypes v_pluspres$sd fault_type
R 8974 5 534 datatypes v_pluspres$p fault_type
R 8975 5 535 datatypes v_pluspres$o fault_type
R 8977 5 537 datatypes uhat_pluspres fault_type
R 8981 5 541 datatypes uhat_pluspres$sd fault_type
R 8982 5 542 datatypes uhat_pluspres$p fault_type
R 8983 5 543 datatypes uhat_pluspres$o fault_type
R 8985 5 545 datatypes vhat_pluspres fault_type
R 8989 5 549 datatypes vhat_pluspres$sd fault_type
R 8990 5 550 datatypes vhat_pluspres$p fault_type
R 8991 5 551 datatypes vhat_pluspres$o fault_type
R 9002 25 562 datatypes seismogram_type
R 9003 5 563 datatypes output_exact_moment seismogram_type
R 9004 5 564 datatypes output_seismograms seismogram_type
R 9005 5 565 datatypes output_fields_block1 seismogram_type
R 9006 5 566 datatypes output_fields_block2 seismogram_type
R 9007 5 567 datatypes stride_fields seismogram_type
R 9008 5 568 datatypes file_unit_block1 seismogram_type
R 9009 5 569 datatypes file_unit_block2 seismogram_type
R 9010 5 570 datatypes nstations seismogram_type
R 9011 5 571 datatypes block_num seismogram_type
R 9013 5 573 datatypes i seismogram_type
R 9014 5 574 datatypes i$sd seismogram_type
R 9015 5 575 datatypes i$p seismogram_type
R 9016 5 576 datatypes i$o seismogram_type
R 9019 5 579 datatypes j seismogram_type
R 9020 5 580 datatypes j$sd seismogram_type
R 9021 5 581 datatypes j$p seismogram_type
R 9022 5 582 datatypes j$o seismogram_type
R 9024 5 584 datatypes k seismogram_type
R 9026 5 586 datatypes k$sd seismogram_type
R 9027 5 587 datatypes k$p seismogram_type
R 9028 5 588 datatypes k$o seismogram_type
R 9030 5 590 datatypes file_unit seismogram_type
R 9032 5 592 datatypes file_unit$sd seismogram_type
R 9033 5 593 datatypes file_unit$p seismogram_type
R 9034 5 594 datatypes file_unit$o seismogram_type
R 9037 5 597 datatypes i_phys seismogram_type
R 9038 5 598 datatypes i_phys$sd seismogram_type
R 9039 5 599 datatypes i_phys$p seismogram_type
R 9040 5 600 datatypes i_phys$o seismogram_type
R 9042 5 602 datatypes j_phys seismogram_type
R 9044 5 604 datatypes j_phys$sd seismogram_type
R 9045 5 605 datatypes j_phys$p seismogram_type
R 9046 5 606 datatypes j_phys$o seismogram_type
R 9048 5 608 datatypes k_phys seismogram_type
R 9050 5 610 datatypes k_phys$sd seismogram_type
R 9051 5 611 datatypes k_phys$p seismogram_type
R 9052 5 612 datatypes k_phys$o seismogram_type
R 9056 25 616 datatypes slice_type
R 9057 5 617 datatypes hslice slice_type
R 9058 5 618 datatypes vslice slice_type
R 9059 5 619 datatypes horz_slice slice_type
R 9060 5 620 datatypes vert_slice slice_type
R 9061 5 621 datatypes locationh slice_type
R 9062 5 622 datatypes locationv slice_type
R 9063 5 623 datatypes array_s slice_type
R 9065 25 625 datatypes domain_type
R 9066 5 626 datatypes nblocks domain_type
R 9067 5 627 datatypes nifaces domain_type
R 9068 5 628 datatypes w_stride domain_type
R 9069 5 629 datatypes dt domain_type
R 9070 5 630 datatypes t domain_type
R 9071 5 631 datatypes t_final domain_type
R 9072 5 632 datatypes cfl domain_type
R 9073 5 633 datatypes topo domain_type
R 9074 5 634 datatypes nt domain_type
R 9076 5 636 datatypes b domain_type
R 9077 5 637 datatypes b$sd domain_type
R 9078 5 638 datatypes b$p domain_type
R 9079 5 639 datatypes b$o domain_type
R 9082 5 642 datatypes i domain_type
R 9083 5 643 datatypes i$sd domain_type
R 9084 5 644 datatypes i$p domain_type
R 9085 5 645 datatypes i$o domain_type
R 9087 5 647 datatypes fault domain_type
R 9088 5 648 datatypes mms_vars domain_type
R 9089 5 649 datatypes name domain_type
R 9090 5 650 datatypes problem domain_type
R 9091 5 651 datatypes response domain_type
R 9092 5 652 datatypes plastic_model domain_type
R 9093 5 653 datatypes coupling domain_type
R 9094 5 654 datatypes fd_type domain_type
R 9095 5 655 datatypes type_of_mesh domain_type
R 9096 5 656 datatypes mesh_source domain_type
R 9097 5 657 datatypes material_source domain_type
R 9098 5 658 datatypes w_fault domain_type
R 9099 5 659 datatypes output_fault_topo domain_type
R 9100 5 660 datatypes interpol domain_type
R 9101 5 661 datatypes use_topography domain_type
R 9102 5 662 datatypes mollify_source domain_type
R 9103 5 663 datatypes order domain_type
R 9104 5 664 datatypes seismometers domain_type
R 9106 5 666 datatypes seismometers$sd domain_type
R 9107 5 667 datatypes seismometers$p domain_type
R 9108 5 668 datatypes seismometers$o domain_type
R 9110 5 670 datatypes slicer domain_type
S 9135 23 5 0 0 0 9140 624 44180 0 0 A 0 0 0 0 B 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 init_slice_output
S 9136 1 3 1 0 6 1 9135 44198 4 3000 A 0 0 0 0 B 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 input
S 9137 1 3 1 0 30 1 9135 17192 4 43000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 name
S 9138 1 3 3 0 3645 1 9135 43913 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 slicer
S 9139 1 3 1 0 2671 1 9135 37244 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 9140 14 5 0 0 0 1 9135 44180 0 400000 A 0 0 0 0 B 0 11 0 0 0 0 0 5484 4 0 0 0 0 0 0 0 0 0 0 0 0 11 0 624 0 0 0 0 init_slice_output init_slice_output 
F 9140 4 9136 9137 9138 9139
S 9141 23 5 0 0 0 9145 624 44204 0 0 A 0 0 0 0 B 0 79 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 write_slice
S 9142 7 3 1 0 3725 1 9141 37836 10a00004 3050 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9146 0 0 0 0 0 0 0 0 f
S 9143 1 3 1 0 2671 1 9141 37244 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 9144 1 3 1 0 3645 1 9141 43913 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 slicer
S 9145 14 5 0 0 0 1 9141 44204 0 400000 A 0 0 0 0 B 0 79 0 0 0 0 0 5489 3 0 0 0 0 0 0 0 0 0 0 0 0 79 0 624 0 0 0 0 write_slice write_slice 
F 9145 3 9142 9143 9144
S 9146 8 1 0 0 3728 1 9141 44216 40822004 1020 A 0 0 0 0 B 0 86 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 f$sd2
S 9150 23 5 0 0 0 9152 624 44242 0 0 A 0 0 0 0 B 0 96 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 end_slice_output
S 9151 1 3 3 0 3645 1 9150 43913 4 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 slicer
S 9152 14 5 0 0 0 1 9150 44242 0 400000 A 0 0 0 0 B 0 96 0 0 0 0 0 5493 1 0 0 0 0 0 0 0 0 0 0 0 0 96 0 624 0 0 0 0 end_slice_output end_slice_output 
F 9152 1 9151
A 13 2 0 0 0 6 636 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 30 2 0 0 0 6 639 0 0 0 30 0 0 0 0 0 0 0 0 0 0 0
A 32 2 0 0 0 6 644 0 0 0 32 0 0 0 0 0 0 0 0 0 0 0
A 54 2 0 0 0 7 645 0 0 0 54 0 0 0 0 0 0 0 0 0 0 0
A 55 2 0 0 0 7 646 0 0 0 55 0 0 0 0 0 0 0 0 0 0 0
A 61 1 0 1 0 58 668 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 67 1 0 1 0 64 670 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 71 1 0 3 0 70 672 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 124 1 0 0 0 76 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 127 1 0 0 0 85 728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 506 2 0 0 293 7 834 0 0 0 506 0 0 0 0 0 0 0 0 0 0 0
A 507 2 0 0 294 7 835 0 0 0 507 0 0 0 0 0 0 0 0 0 0 0
A 1398 2 0 0 1247 7 7936 0 0 0 1398 0 0 0 0 0 0 0 0 0 0 0
A 1400 2 0 0 1361 7 7943 0 0 0 1400 0 0 0 0 0 0 0 0 0 0 0
A 1402 2 0 0 1342 7 7937 0 0 0 1402 0 0 0 0 0 0 0 0 0 0 0
A 1404 2 0 0 1067 7 7938 0 0 0 1404 0 0 0 0 0 0 0 0 0 0 0
A 1408 2 0 0 1355 7 7941 0 0 0 1408 0 0 0 0 0 0 0 0 0 0 0
A 1410 2 0 0 884 7 7939 0 0 0 1410 0 0 0 0 0 0 0 0 0 0 0
A 1412 2 0 0 1354 7 7940 0 0 0 1412 0 0 0 0 0 0 0 0 0 0 0
A 1416 2 0 0 1356 7 7942 0 0 0 1416 0 0 0 0 0 0 0 0 0 0 0
A 1419 2 0 0 1362 7 7944 0 0 0 1419 0 0 0 0 0 0 0 0 0 0 0
A 1432 2 0 0 1363 7 7945 0 0 0 1432 0 0 0 0 0 0 0 0 0 0 0
A 1434 2 0 0 1368 7 7946 0 0 0 1434 0 0 0 0 0 0 0 0 0 0 0
A 1438 2 0 0 1369 7 7947 0 0 0 1438 0 0 0 0 0 0 0 0 0 0 0
A 1459 2 0 0 1370 7 7948 0 0 0 1459 0 0 0 0 0 0 0 0 0 0 0
A 1477 2 0 0 1371 7 7949 0 0 0 1477 0 0 0 0 0 0 0 0 0 0 0
A 1479 2 0 0 1372 7 7950 0 0 0 1479 0 0 0 0 0 0 0 0 0 0 0
A 1483 2 0 0 1348 7 7951 0 0 0 1483 0 0 0 0 0 0 0 0 0 0 0
A 2024 2 0 0 1398 7 8439 0 0 0 2024 0 0 0 0 0 0 0 0 0 0 0
A 2659 1 0 9 2542 3728 9146 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 2660 10 0 0 1507 7 2659 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1400
A 2661 10 0 0 2660 7 2659 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1402
A 2662 10 0 0 2661 7 2659 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1404
A 2663 4 0 0 1532 7 2662 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 2664 4 0 0 493 7 2661 0 2663 0 0 0 0 1 0 0 0 0 0 0 0 0
A 2665 10 0 0 2662 7 2659 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1408
A 2666 10 0 0 2665 7 2659 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1410
A 2667 10 0 0 2666 7 2659 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1412
A 2668 4 0 0 1533 7 2667 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 2669 4 0 0 1743 7 2666 0 2668 0 0 0 0 1 0 0 0 0 0 0 0 0
A 2670 10 0 0 2667 7 2659 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1416
A 2671 10 0 0 2670 7 2659 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1432
A 2672 10 0 0 2671 7 2659 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1434
A 2673 4 0 0 87 7 2672 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 2674 4 0 0 2367 7 2671 0 2673 0 0 0 0 1 0 0 0 0 0 0 0 0
A 2675 10 0 0 2672 7 2659 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1438
A 2676 10 0 0 2675 7 2659 34 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1477
A 2677 10 0 0 2676 7 2659 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1479
A 2678 4 0 0 2157 7 2677 0 11 0 0 0 0 2 0 0 0 0 0 0 0 0
A 2679 4 0 0 1998 7 2676 0 2678 0 0 0 0 1 0 0 0 0 0 0 0 0
A 2680 10 0 0 2677 7 2659 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 1483
A 2681 10 0 0 2680 7 2659 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 507
Z
J 69 1 1
V 61 58 7 0
R 0 61 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 30 1
A 0 6 0 0 1 32 1
A 0 6 0 0 1 13 0
J 71 1 1
V 67 64 7 0
R 0 67 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 30 1
A 0 6 0 0 1 32 1
A 0 6 0 0 1 13 0
J 73 1 1
V 71 70 7 0
R 0 73 0 0
A 0 6 0 0 1 32 1
A 0 6 0 0 1 13 0
J 131 1 1
V 124 76 7 0
S 0 76 0 0 0
A 0 6 0 0 1 2 0
J 132 1 1
V 127 85 7 0
S 0 85 0 0 0
A 0 6 0 0 1 2 0
T 8453 2952 0 0 0 0
A 8467 7 2988 0 1 2 1
A 8466 7 0 1459 1 10 1
A 8476 7 2990 0 1 2 1
A 8475 7 0 1459 1 10 1
A 8485 7 2992 0 1 2 1
A 8484 7 0 1459 1 10 1
A 8494 7 2994 0 1 2 1
A 8493 7 0 1459 1 10 1
A 8502 7 2996 0 1 2 1
A 8501 7 0 1419 1 10 0
T 8507 3001 0 0 0 0
A 8514 7 3013 0 1 2 1
A 8513 7 0 1459 1 10 0
T 8519 3018 0 0 0 0
A 8527 7 3033 0 1 2 1
A 8526 7 0 1459 1 10 0
T 8532 3038 0 0 0 0
A 8539 7 3056 0 1 2 1
A 8538 7 0 1459 1 10 1
A 8548 7 3058 0 1 2 1
A 8547 7 0 1459 1 10 0
T 8553 3063 0 0 0 0
A 8559 7 3135 0 1 2 1
A 8558 7 0 1419 1 10 1
A 8567 7 3137 0 1 2 1
A 8566 7 0 1419 1 10 1
A 8575 7 3139 0 1 2 1
A 8574 7 0 1419 1 10 1
A 8583 7 3141 0 1 2 1
A 8582 7 0 1419 1 10 1
A 8591 7 3143 0 1 2 1
A 8590 7 0 1419 1 10 1
A 8599 7 3145 0 1 2 1
A 8598 7 0 1419 1 10 1
A 8607 7 3147 0 1 2 1
A 8606 7 0 1419 1 10 1
A 8615 7 3149 0 1 2 1
A 8614 7 0 1419 1 10 1
A 8623 7 3151 0 1 2 1
A 8622 7 0 1419 1 10 1
A 8631 7 3153 0 1 2 1
A 8630 7 0 1419 1 10 1
A 8639 7 3155 0 1 2 1
A 8638 7 0 1419 1 10 0
T 8653 3169 0 0 0 0
A 8658 7 3297 0 1 2 1
A 8657 7 0 2024 1 10 1
A 8664 7 3299 0 1 2 1
A 8663 7 0 2024 1 10 1
A 8670 7 3301 0 1 2 1
A 8669 7 0 2024 1 10 1
A 8676 7 3303 0 1 2 1
A 8675 7 0 2024 1 10 1
A 8682 7 3305 0 1 2 1
A 8681 7 0 2024 1 10 1
A 8688 7 3307 0 1 2 1
A 8687 7 0 2024 1 10 1
A 8694 7 3309 0 1 2 1
A 8693 7 0 2024 1 10 1
A 8700 7 3311 0 1 2 1
A 8699 7 0 2024 1 10 1
A 8706 7 3313 0 1 2 1
A 8705 7 0 2024 1 10 1
A 8712 7 3315 0 1 2 1
A 8711 7 0 2024 1 10 1
A 8718 7 3317 0 1 2 1
A 8717 7 0 2024 1 10 1
A 8724 7 3319 0 1 2 1
A 8723 7 0 2024 1 10 1
A 8730 7 3321 0 1 2 1
A 8729 7 0 2024 1 10 1
A 8736 7 3323 0 1 2 1
A 8735 7 0 2024 1 10 1
A 8742 7 3325 0 1 2 1
A 8741 7 0 2024 1 10 1
A 8748 7 3327 0 1 2 1
A 8747 7 0 2024 1 10 1
A 8754 7 3329 0 1 2 1
A 8753 7 0 2024 1 10 1
A 8763 7 3331 0 1 2 1
A 8762 7 0 1459 1 10 1
A 8769 7 3333 0 1 2 1
A 8768 7 0 2024 1 10 1
A 8775 7 3335 0 1 2 1
A 8774 7 0 2024 1 10 0
T 8783 3340 0 0 0 0
A 8793 7 3358 0 1 2 1
A 8792 7 0 1459 1 10 1
A 8802 7 3360 0 1 2 1
A 8801 7 0 1459 1 10 0
T 8807 3365 0 0 0 0
A 8813 7 3383 0 1 2 1
A 8812 7 0 1398 1 10 1
A 8820 7 3385 0 1 2 1
A 8819 7 0 1398 1 10 0
T 8825 3390 0 3 0 0
T 8832 2952 0 3 0 1
A 8467 7 2988 0 1 2 1
A 8466 7 0 1459 1 10 1
A 8476 7 2990 0 1 2 1
A 8475 7 0 1459 1 10 1
A 8485 7 2992 0 1 2 1
A 8484 7 0 1459 1 10 1
A 8494 7 2994 0 1 2 1
A 8493 7 0 1459 1 10 1
A 8502 7 2996 0 1 2 1
A 8501 7 0 1419 1 10 0
T 8833 3001 0 3 0 1
A 8514 7 3013 0 1 2 1
A 8513 7 0 1459 1 10 0
T 8834 3038 0 3 0 1
A 8539 7 3056 0 1 2 1
A 8538 7 0 1459 1 10 1
A 8548 7 3058 0 1 2 1
A 8547 7 0 1459 1 10 0
T 8835 3169 0 3 0 1
A 8658 7 3297 0 1 2 1
A 8657 7 0 2024 1 10 1
A 8664 7 3299 0 1 2 1
A 8663 7 0 2024 1 10 1
A 8670 7 3301 0 1 2 1
A 8669 7 0 2024 1 10 1
A 8676 7 3303 0 1 2 1
A 8675 7 0 2024 1 10 1
A 8682 7 3305 0 1 2 1
A 8681 7 0 2024 1 10 1
A 8688 7 3307 0 1 2 1
A 8687 7 0 2024 1 10 1
A 8694 7 3309 0 1 2 1
A 8693 7 0 2024 1 10 1
A 8700 7 3311 0 1 2 1
A 8699 7 0 2024 1 10 1
A 8706 7 3313 0 1 2 1
A 8705 7 0 2024 1 10 1
A 8712 7 3315 0 1 2 1
A 8711 7 0 2024 1 10 1
A 8718 7 3317 0 1 2 1
A 8717 7 0 2024 1 10 1
A 8724 7 3319 0 1 2 1
A 8723 7 0 2024 1 10 1
A 8730 7 3321 0 1 2 1
A 8729 7 0 2024 1 10 1
A 8736 7 3323 0 1 2 1
A 8735 7 0 2024 1 10 1
A 8742 7 3325 0 1 2 1
A 8741 7 0 2024 1 10 1
A 8748 7 3327 0 1 2 1
A 8747 7 0 2024 1 10 1
A 8754 7 3329 0 1 2 1
A 8753 7 0 2024 1 10 1
A 8763 7 3331 0 1 2 1
A 8762 7 0 1459 1 10 1
A 8769 7 3333 0 1 2 1
A 8768 7 0 2024 1 10 1
A 8775 7 3335 0 1 2 1
A 8774 7 0 2024 1 10 0
T 8836 3018 0 3 0 1
A 8527 7 3033 0 1 2 1
A 8526 7 0 1459 1 10 0
T 8837 3063 0 506 0 1
A 8559 7 3135 0 1 2 1
A 8558 7 0 1419 1 10 1
A 8567 7 3137 0 1 2 1
A 8566 7 0 1419 1 10 1
A 8575 7 3139 0 1 2 1
A 8574 7 0 1419 1 10 1
A 8583 7 3141 0 1 2 1
A 8582 7 0 1419 1 10 1
A 8591 7 3143 0 1 2 1
A 8590 7 0 1419 1 10 1
A 8599 7 3145 0 1 2 1
A 8598 7 0 1419 1 10 1
A 8607 7 3147 0 1 2 1
A 8606 7 0 1419 1 10 1
A 8615 7 3149 0 1 2 1
A 8614 7 0 1419 1 10 1
A 8623 7 3151 0 1 2 1
A 8622 7 0 1419 1 10 1
A 8631 7 3153 0 1 2 1
A 8630 7 0 1419 1 10 1
A 8639 7 3155 0 1 2 1
A 8638 7 0 1419 1 10 0
T 8839 3340 0 506 0 1
A 8793 7 3358 0 1 2 1
A 8792 7 0 1459 1 10 1
A 8802 7 3360 0 1 2 1
A 8801 7 0 1459 1 10 0
T 8843 3365 0 3 0 0
A 8813 7 3383 0 1 2 1
A 8812 7 0 1398 1 10 1
A 8820 7 3385 0 1 2 1
A 8819 7 0 1398 1 10 0
T 8846 3408 0 0 0 0
A 8856 7 3468 0 1 2 1
A 8855 7 0 1419 1 10 1
A 8864 7 3470 0 1 2 1
A 8863 7 0 1419 1 10 1
A 8872 7 3472 0 1 2 1
A 8871 7 0 1419 1 10 1
A 8880 7 3474 0 1 2 1
A 8879 7 0 1419 1 10 1
A 8888 7 3476 0 1 2 1
A 8887 7 0 1419 1 10 1
A 8896 7 3478 0 1 2 1
A 8895 7 0 1419 1 10 1
A 8904 7 3480 0 1 2 1
A 8903 7 0 1419 1 10 1
A 8912 7 3482 0 1 2 1
A 8911 7 0 1419 1 10 1
A 8920 7 3484 0 1 2 1
A 8919 7 0 1419 1 10 0
T 8926 3489 0 0 0 0
A 8934 7 3546 0 1 2 1
A 8933 7 0 1419 1 10 1
A 8942 7 3548 0 1 2 1
A 8941 7 0 1419 1 10 1
A 8950 7 3550 0 1 2 1
A 8949 7 0 1419 1 10 1
A 8958 7 3552 0 1 2 1
A 8957 7 0 1419 1 10 1
A 8966 7 3554 0 1 2 1
A 8965 7 0 1419 1 10 1
A 8974 7 3556 0 1 2 1
A 8973 7 0 1419 1 10 1
A 8982 7 3558 0 1 2 1
A 8981 7 0 1419 1 10 1
A 8990 7 3560 0 1 2 1
A 8989 7 0 1419 1 10 0
T 9002 3574 0 0 0 0
A 9015 7 3628 0 1 2 1
A 9014 7 0 2024 1 10 1
A 9021 7 3630 0 1 2 1
A 9020 7 0 2024 1 10 1
A 9027 7 3632 0 1 2 1
A 9026 7 0 2024 1 10 1
A 9033 7 3634 0 1 2 1
A 9032 7 0 2024 1 10 1
A 9039 7 3636 0 1 2 1
A 9038 7 0 2024 1 10 1
A 9045 7 3638 0 1 2 1
A 9044 7 0 2024 1 10 1
A 9051 7 3640 0 1 2 1
A 9050 7 0 2024 1 10 0
T 9065 3654 0 3 0 0
T 9087 3489 0 3 0 0
A 8934 7 3546 0 1 2 1
A 8933 7 0 1419 1 10 1
A 8942 7 3548 0 1 2 1
A 8941 7 0 1419 1 10 1
A 8950 7 3550 0 1 2 1
A 8949 7 0 1419 1 10 1
A 8958 7 3552 0 1 2 1
A 8957 7 0 1419 1 10 1
A 8966 7 3554 0 1 2 1
A 8965 7 0 1419 1 10 1
A 8974 7 3556 0 1 2 1
A 8973 7 0 1419 1 10 1
A 8982 7 3558 0 1 2 1
A 8981 7 0 1419 1 10 1
A 8990 7 3560 0 1 2 1
A 8989 7 0 1419 1 10 0
Z
