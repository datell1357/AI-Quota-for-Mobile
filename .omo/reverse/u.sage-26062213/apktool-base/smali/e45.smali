.class public final Le45;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lrx4;


# static fields
.field public static final o:Le45;


# instance fields
.field public final n:Lrx4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le45;

    .line 2
    .line 3
    invoke-direct {v0}, Le45;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le45;->o:Le45;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lk45;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lvx4;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lvx4;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lpe4;->d(Lrx4;)Lrx4;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Le45;->n:Lrx4;

    .line 19
    .line 20
    return-void
.end method

.method public static b()Z
    .locals 1

    .line 1
    sget-object v0, Le45;->o:Le45;

    .line 2
    .line 3
    invoke-virtual {v0}, Le45;->a()Lk45;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lk45;->c:Lrw4;

    .line 11
    .line 12
    invoke-virtual {v0}, Lrw4;->b()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0
.end method


# virtual methods
.method public final a()Lk45;
    .locals 0

    .line 1
    iget-object p0, p0, Le45;->n:Lrx4;

    .line 2
    .line 3
    invoke-interface {p0}, Lrx4;->zza()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lk45;

    .line 8
    .line 9
    return-object p0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Le45;->a()Lk45;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
