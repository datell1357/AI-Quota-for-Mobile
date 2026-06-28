.class public final Lzu;
.super Le1;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lom1;


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public p:Lhv;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg03;)V
    .locals 2

    .line 1
    new-instance v0, Lhv;

    .line 2
    .line 3
    const-string v1, "CONNECT"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lhv;-><init>(Ljava/lang/String;Ljava/lang/String;Lg03;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Le1;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lzu;->p:Lhv;

    .line 12
    .line 13
    iget-object p1, v0, Lhv;->o:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p1, p0, Lzu;->n:Ljava/lang/String;

    .line 16
    .line 17
    iget-object p1, v0, Lhv;->p:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lzu;->o:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getProtocolVersion()Lg03;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzu;->getRequestLine()Ld73;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lhv;

    .line 6
    .line 7
    iget-object p0, p0, Lhv;->n:Lg03;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getRequestLine()Ld73;
    .locals 4

    .line 1
    iget-object v0, p0, Lzu;->p:Lhv;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lhv;

    .line 6
    .line 7
    iget-object v1, p0, Lzu;->o:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v2, Ldn1;->s:Ldn1;

    .line 10
    .line 11
    iget-object v3, p0, Lzu;->n:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {v0, v3, v1, v2}, Lhv;-><init>(Ljava/lang/String;Ljava/lang/String;Lg03;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lzu;->p:Lhv;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lzu;->p:Lhv;

    .line 19
    .line 20
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lzu;->n:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lzu;->o:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Le1;->headergroup:Lij1;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
