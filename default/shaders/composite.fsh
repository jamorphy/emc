/* filename matters! */
#version 330 compatibility

uniform sampler2D colortex0;

in vec2 texcoord;

/* RENDERTARGETS: 0 */
layout(location = 0) out vec4 color;

void main() {
    color = texture(colortex0, texcoord);
    if (texcoord.x > 0.1 && texcoord.x < 0.3 || texcoord.x > 0.6 && texcoord.x < 0.8) {
        // lol
        float red = dot(color.rgb, vec3(1.0, 0.0, 0.0));
        color.rgb = vec3(red);
    } else {
        float grayscale = dot(color.rgb, vec3(1.0 / 4.0));
        color.rgb = vec3(grayscale);
    }
}