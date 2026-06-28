.class public abstract Ltd0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# static fields
.field public static final a:Lem1;

.field public static final b:Lym1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v1, Lem1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v2, "no-host"

    .line 5
    .line 6
    const-string v3, "127.0.0.255"

    .line 7
    .line 8
    invoke-direct {v1, v3, v0, v2}, Lem1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v1, Ltd0;->a:Lem1;

    .line 12
    .line 13
    new-instance v0, Lym1;

    .line 14
    .line 15
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16
    .line 17
    sget-object v5, Lta3;->n:Lta3;

    .line 18
    .line 19
    sget-object v6, Lsa3;->n:Lsa3;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct/range {v0 .. v6}, Lym1;-><init>(Lem1;Ljava/net/InetAddress;Ljava/util/List;ZLta3;Lsa3;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Ltd0;->b:Lym1;

    .line 27
    .line 28
    return-void
.end method
