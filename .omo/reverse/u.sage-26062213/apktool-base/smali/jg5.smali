.class public final Ljg5;
.super Lkg5;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public b:I


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 p0, 0x2f

    .line 2
    .line 3
    const/16 v0, 0x2e

    .line 4
    .line 5
    const-string v1, "com/google/android/libraries/phenotype/client/Phlogger"

    .line 6
    .line 7
    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "logInternal"

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()I
    .locals 0

    .line 1
    const/16 p0, 0x2c

    .line 2
    .line 3
    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-char p0, Ljava/io/File;->separatorChar:C

    .line 2
    .line 3
    const-string v0, "Phlogger.java"

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    add-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Phlogger.java"

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Ljg5;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Ljg5;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, -0x52eab878

    .line 6
    .line 7
    .line 8
    iput v0, p0, Ljg5;->b:I

    .line 9
    .line 10
    :cond_0
    return v0
.end method
