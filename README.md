# How To Include:

Add to ./build/target/product/handheld_product.mk  ```MicroG-Services \```
and in ./build/make/core/Makefile change from 
```define check-product-copy-files
$(if $(filter-out $(TARGET_COPY_OUT_SYSTEM_OTHER)/%,$(2)), \
  $(if $(filter %.apk, $(2)),$(error \
     Prebuilt apk found in PRODUCT_COPY_FILES: $(1), use BUILD_PREBUILT instead!))) \
$(if $(filter true,$(BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES)),, \
  $(if $(filter $(TARGET_COPY_OUT_SYSTEM)/etc/vintf/% \
```

to

```#define check-product-copy-files
#$(if $(filter-out $(TARGET_COPY_OUT_SYSTEM_OTHER)/%,$(2)), \
#  $(if $(filter %.apk, $(2)),$(error \
#     Prebuilt apk found in PRODUCT_COPY_FILES: $(1), use BUILD_PREBUILT instead!)))
define check-product-copy-files
$(if $(filter true,$(BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES)),, \
  $(if $(filter $(TARGET_COPY_OUT_SYSTEM)/etc/vintf/% \

```
