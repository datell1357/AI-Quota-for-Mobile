.class public final Lcom/google/api/client/util/escape/CharEscapers;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field private static final APPLICATION_X_WWW_FORM_URLENCODED:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

.field private static final URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "-_.*"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->APPLICATION_X_WWW_FORM_URLENCODED:Lcom/google/api/client/util/escape/Escaper;

    .line 10
    .line 11
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v2, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 18
    .line 19
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    .line 20
    .line 21
    const-string v1, "-_.!~*\'()@:$&,;="

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 27
    .line 28
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    .line 29
    .line 30
    const-string v1, "-_.!~*\'()@:$&,;=+/?#[]"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 36
    .line 37
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    .line 38
    .line 39
    const-string v1, "-_.!~*\'():$&,;="

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 45
    .line 46
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    .line 47
    .line 48
    const-string v1, "-_.!~*\'()@:$,;/?:"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 54
    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static decodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public static decodeUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    :try_start_0
    const-string v0, "+"

    .line 6
    .line 7
    const-string v1, "%2B"

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public static escapeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->APPLICATION_X_WWW_FORM_URLENCODED:Lcom/google/api/client/util/escape/Escaper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static escapeUriConformant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static escapeUriPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_PATH_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static escapeUriPathWithoutReserved(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_RESERVED_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static escapeUriQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_QUERY_STRING_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static escapeUriUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/util/escape/CharEscapers;->URI_USERINFO_ESCAPER:Lcom/google/api/client/util/escape/Escaper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/escape/Escaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
