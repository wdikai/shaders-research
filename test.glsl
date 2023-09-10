#ifdef GL_ES
precision highp float;
#endif

uniform sampler2D u_texture;
uniform vec2 u_resolution;
uniform vec2 u_mouse;
uniform float u_time;
uniform vec4 color;

float lerp(float v0, float v1, float t) {
  return v0 + t * (v1 - v0);
}

void main() {
  vec4 textureColor = mix(texture2D(u_texture, gl_FragCoord.xy), color, 0.5);
  gl_FragColor = vec4(textureColor.xyz, lerp(1.0, 0.0, u_time));
}
