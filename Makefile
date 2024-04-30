CFLAGS = -std=c++17 -O0 -g # -DNDEBUG
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

VULKAN_SDK_PATH = /usr/include/vulkan
STB_INCLUDE_PATH = /usr/include/stb

CFLAGS = -std=c++17 -I$(VULKAN_SDK_PATH) -I$(STB_INCLUDE_PATH)

VulkanTest: main.cpp
	g++ $(CFLAGS) -o VulkanTriangle main.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTriangle
	./VulkanTriangle

clean:
	rm -f VulkanTriangle