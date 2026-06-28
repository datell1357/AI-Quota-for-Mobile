.class public final Lip0;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Ljm1;


# static fields
.field public static final c:Lip0;


# instance fields
.field public final a:Lbv;

.field public final b:Lep0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lip0;

    .line 2
    .line 3
    invoke-direct {v0}, Lip0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lip0;->c:Lip0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lbv;->b:Lbv;

    .line 5
    .line 6
    iput-object v0, p0, Lip0;->a:Lbv;

    .line 7
    .line 8
    sget-object v0, Lep0;->b:Lep0;

    .line 9
    .line 10
    iput-object v0, p0, Lip0;->b:Lep0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lxj3;)Lm1;
    .locals 2

    .line 1
    new-instance v0, Lgp0;

    .line 2
    .line 3
    iget-object v1, p0, Lip0;->a:Lbv;

    .line 4
    .line 5
    iget-object p0, p0, Lip0;->b:Lep0;

    .line 6
    .line 7
    invoke-direct {v0, p1, v1, p0}, Lgp0;-><init>(Lxj3;Lbv;Lep0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
