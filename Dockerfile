FROM ubuntu:trusty
MAINTAINER Simon Bennett <simonpbennett@gmail.com>

RUN apt-get update && apt-get -y install git cmake ninja-build clang uuid-dev libicu-dev icu-devtools libbsd-dev libedit-dev libxml2-dev libsqlite3-dev swig libpython-dev libncurses5-dev pkg-config
RUN apt-get install -y clang-3.6 && update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.6 100 && update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.6 100
RUN git clone https://github.com/apple/swift.git swift
RUN git clone https://github.com/apple/swift-llvm.git llvm
RUN git clone https://github.com/apple/swift-clang.git clang
RUN git clone https://github.com/apple/swift-lldb.git lldb
RUN git clone https://github.com/apple/swift-cmark.git cmark
RUN git clone https://github.com/apple/swift-llbuild.git llbuild
RUN git clone https://github.com/apple/swift-package-manager.git swiftpm
RUN git clone https://github.com/apple/swift-corelibs-xctest.git
RUN git clone https://github.com/apple/swift-corelibs-foundation.git
RUN swift/utils/build-script -R
ADD main.swift .
ENTRYPOINT [ "/build/Ninja-ReleaseAssert/swift-linux-x86_64/bin/swift"  ]
