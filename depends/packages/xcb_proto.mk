package=xcb_proto
$(package)_version=7.0.26
$(package)_download_path=https://xorg.freedesktop.org/releases/individual/proto
$(package)_file_name=xcb-proto-$($(package)_version).tar.bz2
$(package)_sha256_hash=636162c1759805a5a0114a369dffdeccb8af8c859ef6e1445f26a4e6e046514f

define $(package)_set_vars
  $(package)_config_opts=--disable-shared
  $(package)_config_opts_linux=--with-pic
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef

define $(package)_postprocess_cmds
  find -name "*.pyc" -delete && \
  find -name "*.pyo" -delete
endef
