package defpackage;

import com.google.api.client.http.HttpStatusCodes;

/* JADX INFO: compiled from: r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef */
/* JADX INFO: loaded from: classes.dex */
public final class z01 {
    public static final z01 a = new z01();
    public static final String[][] b = {null, new String[3], new String[8], new String[8], new String[30], new String[8]};

    static {
        a(HttpStatusCodes.STATUS_CODE_OK, "OK");
        a(HttpStatusCodes.STATUS_CODE_CREATED, "Created");
        a(HttpStatusCodes.STATUS_CODE_ACCEPTED, "Accepted");
        a(HttpStatusCodes.STATUS_CODE_NO_CONTENT, "No Content");
        a(HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY, "Moved Permanently");
        a(HttpStatusCodes.STATUS_CODE_FOUND, "Moved Temporarily");
        a(HttpStatusCodes.STATUS_CODE_NOT_MODIFIED, "Not Modified");
        a(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, "Bad Request");
        a(HttpStatusCodes.STATUS_CODE_UNAUTHORIZED, "Unauthorized");
        a(HttpStatusCodes.STATUS_CODE_FORBIDDEN, "Forbidden");
        a(HttpStatusCodes.STATUS_CODE_NOT_FOUND, "Not Found");
        a(429, "Too Many Requests");
        a(500, "Internal Server Error");
        a(501, "Not Implemented");
        a(HttpStatusCodes.STATUS_CODE_BAD_GATEWAY, "Bad Gateway");
        a(HttpStatusCodes.STATUS_CODE_SERVICE_UNAVAILABLE, "Service Unavailable");
        a(100, "Continue");
        a(HttpStatusCodes.STATUS_CODE_TEMPORARY_REDIRECT, "Temporary Redirect");
        a(HttpStatusCodes.STATUS_CODE_METHOD_NOT_ALLOWED, "Method Not Allowed");
        a(HttpStatusCodes.STATUS_CODE_CONFLICT, "Conflict");
        a(HttpStatusCodes.STATUS_CODE_PRECONDITION_FAILED, "Precondition Failed");
        a(413, "Request Too Long");
        a(414, "Request-URI Too Long");
        a(415, "Unsupported Media Type");
        a(HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES, "Multiple Choices");
        a(HttpStatusCodes.STATUS_CODE_SEE_OTHER, "See Other");
        a(305, "Use Proxy");
        a(402, "Payment Required");
        a(406, "Not Acceptable");
        a(407, "Proxy Authentication Required");
        a(408, "Request Timeout");
        a(101, "Switching Protocols");
        a(203, "Non Authoritative Information");
        a(205, "Reset Content");
        a(206, "Partial Content");
        a(504, "Gateway Timeout");
        a(505, "Http Version Not Supported");
        a(410, "Gone");
        a(411, "Length Required");
        a(416, "Requested Range Not Satisfiable");
        a(417, "Expectation Failed");
        a(102, "Processing");
        a(207, "Multi-Status");
        a(HttpStatusCodes.STATUS_CODE_UNPROCESSABLE_ENTITY, "Unprocessable Entity");
        a(419, "Insufficient Space On Resource");
        a(420, "Method Failure");
        a(423, "Locked");
        a(507, "Insufficient Storage");
        a(424, "Failed Dependency");
    }

    public static void a(int i, String str) {
        int i2 = i / 100;
        b[i2][i - (i2 * 100)] = str;
    }
}
