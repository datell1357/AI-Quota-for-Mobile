.class public final Lmx1;
.super Luf1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Kerberos"

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final l([BLjava/lang/String;Lyk0;)[B
    .locals 0

    .line 1
    new-instance p0, Lorg/ietf/jgss/Oid;

    .line 2
    .line 3
    const-string p3, "1.2.840.113554.1.2.2"

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p0, p2}, Luf1;->k([BLorg/ietf/jgss/Oid;Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
