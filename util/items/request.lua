return function(url, method, head)
  local success, result = pcall(request, {
      Url = url,
      Method = method,
      Headers = head
  })
  local a = loadstring(result.Body)()
  return a
end
