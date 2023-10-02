enum RequestStatus {
  initial,
  inProgress,
  success,
  failure,
}

enum HttpMethods {
  get("GET"),
  post("POST"),
  delete("DELETE"),
  patch("PATCH"),
  put("PUT");

  final String name;

  const HttpMethods(this.name);
}
