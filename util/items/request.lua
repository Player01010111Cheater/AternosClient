return function(url, method, head)
  local success, result = pcall(request, {
      Url = url,
      Method = method,
      Headers = head
  })
  return success, result
end
