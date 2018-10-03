def weirdcase string
  string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
end
