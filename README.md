# Red and Blue - Haxe Multi-SWF Library Testcase

**Historic Reference (2012)** - This project may not work with modern Haxe/Flash toolchains.

A testcase demonstrating how to compile Haxe applications that link against multiple external .swf libraries. Red and Blue libraries simulate third-party dependencies where only compiled SWFs and interface definitions are available, with no source code.

## Building

```bash
make all        # Build all three targets
make redonly    # Red library only
make blueonly   # Blue library only
make purple     # Both libraries
```

Requires: Haxe, swfmill