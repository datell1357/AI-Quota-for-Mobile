.class public final Lkw3;
.super Lak;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final e:Lkw3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkw3;

    .line 2
    .line 3
    invoke-direct {v0}, Lkw3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkw3;->e:Lkw3;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x191

    .line 2
    .line 3
    const-string v1, "WWW-Authenticate"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lak;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Lv63;)Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p1, Lv63;->x:Ljava/util/Collection;

    .line 2
    .line 3
    return-object p0
.end method
