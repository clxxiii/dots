#!/bin/bash

stream_workspace_list() {
  niri msg --json event-stream | while read -r line; do
      case "$line" in
          *WorkspacesChanged*)
              niri msg --json workspaces | jq -c 'sort_by(.idx)'
              ;;
      esac
  done
}

get_focused() {
  niri msg --json workspaces | jq -c '.[] | select(.is_focused)'
}

stream_focus() {
  get_focused
  niri msg --json event-stream | while read -r line; do
      case "$line" in
          *WorkspaceActivated*|*WorkspacesChanged*)
              get_focused
              ;;
      esac
  done
}

get_active() {
  niri msg --json workspaces | jq -c 'map(select(.is_active)) | map(.id)'
}

stream_active() {
  get_active
  niri msg --json event-stream | while read -r line; do
      case "$line" in
          *WorkspaceActivated*|*WorkspacesChanged*)
              get_active
              ;;
      esac
  done
}

get_hidden() {
  niri msg --json workspaces | jq -c "map(select((.active_window_id | not) and (.is_active | not))) | map(.id)"
}

stream_hidden() {
  get_hidden
  niri msg --json event-stream | while read -r line; do
      case "$line" in
          *WorkspaceActivated*|*WorkspacesChanged*)
              get_hidden
              ;;
      esac
  done
}

if [[ $1 == 'workspaces' ]] ; then
  stream_workspace_list
fi
if [[ $1 == 'focused' ]] ; then
  stream_focus
fi
if [[ $1 == 'active' ]] ; then
  stream_active
fi
if [[ $1 == 'hidden' ]] ; then
  stream_hidden
fi
