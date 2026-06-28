.class public Ll62;
.super Ly52;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# instance fields
.field public final n:Ljava/lang/Object;

.field public final o:I

.field public final p:Lx33;

.field public volatile q:Lo62;


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILx33;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lv62;->F:Lw52;

    .line 5
    .line 6
    iput-object v0, p0, Ll62;->q:Lo62;

    .line 7
    .line 8
    iput-object p1, p0, Ll62;->n:Ljava/lang/Object;

    .line 9
    .line 10
    iput p2, p0, Ll62;->o:I

    .line 11
    .line 12
    iput-object p3, p0, Ll62;->p:Lx33;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c(Lo62;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll62;->q:Lo62;

    .line 2
    .line 3
    return-void
.end method

.method public final d()Lo62;
    .locals 0

    .line 1
    iget-object p0, p0, Ll62;->q:Lo62;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ll62;->n:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public final m()Lx33;
    .locals 0

    .line 1
    iget-object p0, p0, Ll62;->p:Lx33;

    .line 2
    .line 3
    return-object p0
.end method

.method public final n()I
    .locals 0

    .line 1
    iget p0, p0, Ll62;->o:I

    .line 2
    .line 3
    return p0
.end method
