.class public final Lje1;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lmu3;


# instance fields
.field public final n:Landroid/content/Context;

.field public final o:Ljava/lang/String;

.field public final p:Ld90;

.field public final q:Z

.field public final r:Z

.field public final s:Lnv3;

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ld90;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lje1;->n:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lje1;->o:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lje1;->p:Ld90;

    .line 15
    .line 16
    iput-boolean p4, p0, Lje1;->q:Z

    .line 17
    .line 18
    iput-boolean p5, p0, Lje1;->r:Z

    .line 19
    .line 20
    new-instance p1, Lcc;

    .line 21
    .line 22
    const/16 p2, 0xa

    .line 23
    .line 24
    invoke-direct {p1, p2, p0}, Lcc;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Lnv3;

    .line 28
    .line 29
    invoke-direct {p2, p1}, Lnv3;-><init>(Lne1;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Lje1;->s:Lnv3;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object p0, p0, Lje1;->s:Lnv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnv3;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lie1;

    .line 14
    .line 15
    invoke-virtual {p0}, Lie1;->close()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final f0()Lee1;
    .locals 1

    .line 1
    iget-object p0, p0, Lje1;->s:Lnv3;

    .line 2
    .line 3
    invoke-virtual {p0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lie1;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lie1;->b(Z)Lee1;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lje1;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lje1;->s:Lnv3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lnv3;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lnv3;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lie1;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iput-boolean p1, p0, Lje1;->t:Z

    .line 19
    .line 20
    return-void
.end method
