# ========================================
# Claude Code через Antigravity
# ========================================

# Opus — самая мощная модель
opus() {
  exec env ANTHROPIC_BASE_URL="http://localhost:8317" \
    ANTHROPIC_API_KEY="sk-ant-vibeproxy" \
    ANTHROPIC_MODEL="claude-opus-4-5-thinking" \
    claude
}

# Sonnet — быстрая умная модель
sonnet() {
  exec env ANTHROPIC_BASE_URL="http://localhost:8317" \
    ANTHROPIC_API_KEY="sk-ant-vibeproxy" \
    ANTHROPIC_MODEL="claude-sonnet-4-5-thinking" \
    claude
}

# Sonnet без "размышлений" — ещё быстрее
sonnet-no() {
  exec env ANTHROPIC_BASE_URL="http://localhost:8317" \
    ANTHROPIC_API_KEY="sk-ant-vibeproxy" \
    ANTHROPIC_MODEL="claude-sonnet-4-5" \
    claude
}

# Gemini 3 Pro — работает с картинками
g3() {
  exec env ANTHROPIC_BASE_URL="http://localhost:8317" \
    ANTHROPIC_API_KEY="sk-ant-vibeproxy" \
    ANTHROPIC_MODEL="gemini-3-pro-image" \
    claude
}

glm-claude() {
  exec env \
    ANTHROPIC_DEFAULT_SONNET_MODEL="GLM-4.7" \
    ANTHROPIC_DEFAULT_OPUS_MODEL="GLM-4.7" \
    ANTHROPIC_DEFAULT_HAIKU_MODEL="GLM-4.5-Air" \
    ANTHROPIC_AUTH_TOKEN="f29a4afa91534311b53a0813d0b6243c.IhapQllf0kFsISzO" \
    ANTHROPIC_BASE_URL="https://api.z.ai/api/anthropic" \
    API_TIMEOUT_MS="3000000" \
    claude
}
