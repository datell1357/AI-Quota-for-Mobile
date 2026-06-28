.class public abstract Ls60;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lnl1;
.implements Ljava/io/Closeable;


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Ls60;->log:Lorg/apache/commons/logging/Log;

    .line 13
    .line 14
    return-void
.end method

.method public static b(Lan1;)Lem1;
    .locals 3

    .line 1
    invoke-interface {p0}, Lan1;->getURI()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/net/URI;->isAbsolute()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Lz54;->a(Ljava/net/URI;)Lem1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lo60;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "URI does not specify a valid host name: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method


# virtual methods
.method public abstract doExecute(Lem1;Lom1;Lul1;)Lt60;
.end method

.method public execute(Lan1;La83;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lan1;",
            "La83;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, p2, v0}, Ls60;->execute(Lan1;La83;Lul1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lan1;La83;Lul1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lan1;",
            "La83;",
            "Lul1;",
            ")TT;"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Ls60;->b(Lan1;)Lem1;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0, p1, p2, p3}, Ls60;->execute(Lem1;Lom1;La83;Lul1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lem1;Lom1;La83;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lem1;",
            "Lom1;",
            "La83;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, p1, p2, p3, v0}, Ls60;->execute(Lem1;Lom1;La83;Lul1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lem1;Lom1;La83;Lul1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lem1;",
            "Lom1;",
            "La83;",
            "Lul1;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-string v0, "Response handler"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p4}, Ls60;->execute(Lem1;Lom1;Lul1;)Lt60;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :try_start_0
    invoke-interface {p3}, La83;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p1}, Lvm1;->getEntity()Lxl1;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-static {p3}, Ln44;->f0(Lxl1;)V
    :try_end_0
    .catch Lo60; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 22
    .line 23
    .line 24
    return-object p2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p2

    .line 28
    :try_start_1
    invoke-interface {p1}, Lvm1;->getEntity()Lxl1;

    .line 29
    .line 30
    .line 31
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    invoke-static {p3}, Ln44;->f0(Lxl1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p3

    .line 37
    :try_start_3
    iget-object p0, p0, Ls60;->log:Lorg/apache/commons/logging/Log;

    .line 38
    .line 39
    const-string p4, "Error consuming content after an exception."

    .line 40
    .line 41
    invoke-interface {p0, p4, p3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public execute(Lan1;)Lt60;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, v0}, Ls60;->execute(Lan1;Lul1;)Lt60;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lan1;Lul1;)Lt60;
    .locals 1

    .line 53
    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lw80;->L(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Ls60;->b(Lan1;)Lem1;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ls60;->doExecute(Lem1;Lom1;Lul1;)Lt60;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lem1;Lom1;)Lt60;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, v0}, Ls60;->doExecute(Lem1;Lom1;Lul1;)Lt60;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lem1;Lom1;Lul1;)Lt60;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Ls60;->doExecute(Lem1;Lom1;Lul1;)Lt60;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute(Lan1;)Lvm1;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Ls60;->execute(Lan1;)Lt60;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute(Lan1;Lul1;)Lvm1;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Ls60;->execute(Lan1;Lul1;)Lt60;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute(Lem1;Lom1;)Lvm1;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Ls60;->execute(Lem1;Lom1;)Lt60;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic execute(Lem1;Lom1;Lul1;)Lvm1;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Ls60;->execute(Lem1;Lom1;Lul1;)Lt60;

    move-result-object p0

    return-object p0
.end method
