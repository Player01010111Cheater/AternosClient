return function(url, method)
  local success, result = pcall(request, {
      Url = url,
      Method = method,
  })
  return success, result
end
