.class public final Lcom/google/api/services/calendar/model/CalendarListEntry;
.super Lcom/google/api/client/json/GenericJson;
.source "r8-map-id-307f6cdf5dad069c1280d5a258b34c4733645288135c3d5b66a2837f479f7eef"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/calendar/model/CalendarListEntry$NotificationSettings;
    }
.end annotation


# instance fields
.field private accessRole:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private backgroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private colorId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private conferenceProperties:Lcom/google/api/services/calendar/model/ConferenceProperties;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private defaultReminders:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation
.end field

.field private deleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private foregroundColor:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private hidden:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private notificationSettings:Lcom/google/api/services/calendar/model/CalendarListEntry$NotificationSettings;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private primary:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private selected:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private summary:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private summaryOverride:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private timeZone:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->clone()Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->clone()Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 6
    .line 7
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/CalendarListEntry;->clone()Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object p0

    return-object p0
.end method

.method public getAccessRole()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->accessRole:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->backgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getColorId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->colorId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getConferenceProperties()Lcom/google/api/services/calendar/model/ConferenceProperties;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->conferenceProperties:Lcom/google/api/services/calendar/model/ConferenceProperties;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDefaultReminders()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->defaultReminders:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDeleted()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->deleted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getForegroundColor()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->foregroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->hidden:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getKind()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getNotificationSettings()Lcom/google/api/services/calendar/model/CalendarListEntry$NotificationSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->notificationSettings:Lcom/google/api/services/calendar/model/CalendarListEntry$NotificationSettings;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->primary:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->selected:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSummaryOverride()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->summaryOverride:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->timeZone:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isDeleted()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->deleted:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isHidden()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->hidden:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isPrimary()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->primary:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->selected:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/CalendarListEntry;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/api/services/calendar/model/CalendarListEntry;

    .line 6
    .line 7
    return-object p0
.end method

.method public setAccessRole(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->accessRole:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBackgroundColor(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->backgroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setColorId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->colorId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setConferenceProperties(Lcom/google/api/services/calendar/model/ConferenceProperties;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->conferenceProperties:Lcom/google/api/services/calendar/model/ConferenceProperties;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDefaultReminders(Ljava/util/List;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/api/services/calendar/model/EventReminder;",
            ">;)",
            "Lcom/google/api/services/calendar/model/CalendarListEntry;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->defaultReminders:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->deleted:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->etag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setForegroundColor(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->foregroundColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHidden(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->hidden:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->kind:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->location:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNotificationSettings(Lcom/google/api/services/calendar/model/CalendarListEntry$NotificationSettings;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->notificationSettings:Lcom/google/api/services/calendar/model/CalendarListEntry$NotificationSettings;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPrimary(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->primary:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSelected(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->selected:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->summary:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSummaryOverride(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->summaryOverride:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/model/CalendarListEntry;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/api/services/calendar/model/CalendarListEntry;->timeZone:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
