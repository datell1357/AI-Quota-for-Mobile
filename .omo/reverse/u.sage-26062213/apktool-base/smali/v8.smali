.class public final Lv8;
.super Ljava/lang/Object;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"

# interfaces
.implements Lip;


# instance fields
.field public final a:Lq9;

.field public final b:Llp;

.field public final c:Landroid/view/autofill/AutofillId;


# direct methods
.method public constructor <init>(Lq9;Llp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv8;->a:Lq9;

    .line 5
    .line 6
    iput-object p2, p0, Lv8;->b:Llp;

    .line 7
    .line 8
    invoke-static {p1}, Ly2;->l(Lq9;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lgg4;->C(Landroid/view/View;)Li3;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Li3;->a:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {p1}, Ly2;->f(Ljava/lang/Object;)Landroid/view/autofill/AutofillId;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iput-object p1, p0, Lv8;->c:Landroid/view/autofill/AutofillId;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-string p0, "Required value was null."

    .line 31
    .line 32
    invoke-static {p0}, Ldi0;->m(Ljava/lang/String;)Lv00;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    throw p0
.end method
