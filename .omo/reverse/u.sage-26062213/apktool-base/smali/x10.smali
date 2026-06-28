.class public abstract Lx10;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lex1;
.implements Ljava/io/Serializable;


# instance fields
.field public transient n:Lex1;

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/Class;

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx10;->o:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lx10;->p:Ljava/lang/Class;

    .line 7
    .line 8
    iput-object p3, p0, Lx10;->q:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lx10;->r:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lx10;->s:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public abstract c()Lex1;
.end method

.method public final e()Lg50;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lx10;->s:Z

    .line 2
    .line 3
    iget-object p0, p0, Lx10;->p:Ljava/lang/Class;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Ly33;->a:Lz33;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v0, Lwr2;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lwr2;-><init>(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    invoke-static {p0}, Ly33;->a(Ljava/lang/Class;)Li50;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method
