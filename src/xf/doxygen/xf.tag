<?xml version='1.0' encoding='UTF-8' standalone='yes' ?>
<tagfile doxygen_version="1.10.0" doxygen_gitid="ebc57c6dd303a980bd19dd74b8b61c8f3f5180ca">
  <compound kind="class">
    <name>XF</name>
    <filename>class_x_f.html</filename>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>initialize</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>aa94887c528fe8433ea2391b0f191bee6</anchor>
      <arglist>(int argc=0, char *argv[]=nullptr)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>exec</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>af120f0ad4ea4d6d2ba0621aa01265e89</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>execOnce</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a5718ac28d228ad3030da4b27fb55e666</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static bool</type>
      <name>isRunning</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a54056434143ad95d843d52b5bc1923bf</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static bool</type>
      <name>isInitialized_</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>a23a9fa2916f1ea8a0bf5e9a79258652e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static bool</type>
      <name>isRunning_</name>
      <anchorfile>class_x_f.html</anchorfile>
      <anchor>ae8f39c1346c3207bbecca8234281ea9f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFBehavior</name>
    <filename>classinterface_1_1_x_f_behavior.html</filename>
    <member kind="typedef">
      <type>bool</type>
      <name>TerminateBehavior</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>af194a7243dfd05f3e83508fb59fdba61</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>startBehavior</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a03ae3f6c68bf16c51d2455d00cef2143</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pushEvent</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a65d3d0de2be2bffc65d89edac4604c91</anchor>
      <arglist>(XFEvent *pEvent, uint32_t timeout=0)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual XFEvent::XFEventHandle</type>
      <name>pushEvent</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a663ff1bc57113423c11d11f673d73bdf</anchor>
      <arglist>(int eventId, uint32_t timeout=0)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>deleteOnTerminate</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a19ebec4052f7e0b8f0ba85b80986bf16</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setDeleteOnTerminate</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>ab7d53b33fadd70e3e5799244fb2241f5</anchor>
      <arglist>(bool deleteBehavior)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>cancelEvent</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>a0ade2e9f88538d948e0763794c96ffde</anchor>
      <arglist>(XFEvent::XFEventHandle eventHandle)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual TerminateBehavior</type>
      <name>process</name>
      <anchorfile>classinterface_1_1_x_f_behavior.html</anchorfile>
      <anchor>ad52280557cdac2dc0bd025dafa9fffbb</anchor>
      <arglist>(const XFEvent *pEvent)=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFBehavior</name>
    <filename>class_x_f_behavior.html</filename>
    <base>interface::XFBehavior</base>
    <member kind="typedef">
      <type>XFEvent::XFEventHandle</type>
      <name>XFEventHandle</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a51391da388b4091d87e8ae045141e13c</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>XFBehavior</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ad01f30e5f658a3ade224ea2d85c27f1e</anchor>
      <arglist>(bool active=true, const char *threadName=nullptr)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>startBehavior</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a84756f7e6fb88fc3efc4bc42b5bd2be9</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ab8b2e7f72a7039ab119a9aa17ab6303c</anchor>
      <arglist>(XFEvent *pEvent, uint32_t timeout=0) override</arglist>
    </member>
    <member kind="function">
      <type>XFEvent::XFEventHandle</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a2f5894511c54a6a15963e7d646589529</anchor>
      <arglist>(int eventId, uint32_t timeout=0) override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteOnTerminate</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a23d578f29658077ea678880e67b060d5</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setDeleteOnTerminate</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a84e9656f9edebfa0c3009859d95830a3</anchor>
      <arglist>(bool deleteBehavior) override</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual XFEventStatus</type>
      <name>processEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a0d52aeb051101b13f9258a63ed9b3033</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>cancelEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a3def323cf6679de3c24e7b2969cfc2f5</anchor>
      <arglist>(XFEventHandle eventHandle) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>const XFEvent *</type>
      <name>getCurrentEvent</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>adc0a3481f70171f7f381d32c71bf179e</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>interface::XFDispatcher *</type>
      <name>getDispatcher</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a95636eba268164cbb41aa35ea48ed6c1</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const bool</type>
      <name>active</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a1f5982bfd38b039dcb16aab51ac73392</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFDispatcher *</type>
      <name>dispatcher</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ae0e15653073ce00df6923e129c7d1298</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>deleteOnTerminate_</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>ab756fe572704a385e9954c507c15924c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const XFEvent *</type>
      <name>pCurrentEvent_</name>
      <anchorfile>class_x_f_behavior.html</anchorfile>
      <anchor>a2ddb90a65aa807034103af1e50846142</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFCustomEvent</name>
    <filename>class_x_f_custom_event.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type></type>
      <name>XFCustomEvent</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>ad2bda94cc81b26026f4120f44e61113b</anchor>
      <arglist>(EventId id, bool deleteAfterConsume=true, interface::XFBehavior *pBehavior=nullptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>ab7b119923ef1d0791542e2c7b85b6c5b</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>setDeleteAfterConsume</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>a857fef63d9865fe47548d771ad7a036c</anchor>
      <arglist>(bool bDeleteAfterConsume=true)</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>bDeleteAfterConsume_</name>
      <anchorfile>class_x_f_custom_event.html</anchorfile>
      <anchor>aff8ac484b7dd2c685360d83f1dde5978</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFDefaultTransition</name>
    <filename>class_x_f_default_transition.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type></type>
      <name>XFDefaultTransition</name>
      <anchorfile>class_x_f_default_transition.html</anchorfile>
      <anchor>a2925af16ba3d1eb20d65138911cf38cc</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_default_transition.html</anchorfile>
      <anchor>aee6aa0ae4c18b77dc2939a672c348a1b</anchor>
      <arglist>() const override</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFDispatcher</name>
    <filename>classinterface_1_1_x_f_dispatcher.html</filename>
    <member kind="typedef">
      <type>XFEvent::XFEventHandle</type>
      <name>XFEventHandle</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a5763e319226d1c64ea759476e7edb98c</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pushEvent</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a892ebe0a928e563c85aeb88174540f4b</anchor>
      <arglist>(XFEvent *pEvent, uint32_t timeout=0)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual XFEventHandle</type>
      <name>pushEvent</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a50ebd2c80f4b7c1b18c94a89763905b6</anchor>
      <arglist>(int eventId, uint32_t timeout, interface::XFBehavior *pBehavior)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>isActive</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a5f1a50c8b1eb512f01a9e449edb7e247</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>acfc8c26282db376f84016951a34aa99a</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFDispatcher *</type>
      <name>getDefaultInstance</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a4b52329caac6682048c9856e5d97468c</anchor>
      <arglist>(bool isActive=true)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFDispatcher *</type>
      <name>create</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>ad7ad181d6a31cab7fea91f780390801c</anchor>
      <arglist>(const char *threadName=nullptr)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>XFDispatcher</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>ad3408783319457342fe3595a87af1c94</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual int</type>
      <name>execute</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a5f19f43b4e0780e3ea78a91af20c9dfa</anchor>
      <arglist>(const void *param=nullptr)=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>executeOnce</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>af31ffca7fedde5d9483e04b0b84a2e52</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" protection="protected" virtualness="pure">
      <type>virtual void</type>
      <name>dispatchEvent</name>
      <anchorfile>classinterface_1_1_x_f_dispatcher.html</anchorfile>
      <anchor>a65addbde50944781dd5ee0631affb701</anchor>
      <arglist>(const XFEvent *pEvent) const =0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFDispatcher</name>
    <filename>class_x_f_dispatcher.html</filename>
    <base>interface::XFThreadEntryPointProvider</base>
    <base>interface::XFDispatcher</base>
    <member kind="function">
      <type></type>
      <name>XFDispatcher</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>ad0d4e6d5b3e0bcb2d7fa2a75e01b9df5</anchor>
      <arglist>(bool isActive=true, const char *threadName=nullptr)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>isActive</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a28e190cc738c111e099a6605cc8b4cc3</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>af562b616c83e50fad3941c71b79149d6</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a7de2fa29b378468fecf49758f02d1663</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a714f6edb71dbfdc90e8d57b0f6b6e366</anchor>
      <arglist>(XFEvent *pEvent, uint32_t timeout=0) override</arglist>
    </member>
    <member kind="function">
      <type>XFEventHandle</type>
      <name>pushEvent</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a7023a303f04fd99927bfc017e763d0e0</anchor>
      <arglist>(int eventId, uint32_t timeout, interface::XFBehavior *pBehavior) override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>executeOnce</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a6f9bbeed06f6220e2c1b9d3c3adb51e9</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>int</type>
      <name>execute</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>af49bf1196f14094917a8d5223f4cd9d9</anchor>
      <arglist>(const void *param=nullptr) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>dispatchEvent</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>aed9fed4c3b80dea28d70a48e705f5926</anchor>
      <arglist>(const XFEvent *pEvent) const override</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>bool</type>
      <name>isExecuting_</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a8b5c8839be342eda60260eee8c558b16</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFThread *</type>
      <name>pThread_</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a59caf77bb9188fd50712307864d92a07</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>XFEventQueue</type>
      <name>events_</name>
      <anchorfile>class_x_f_dispatcher.html</anchorfile>
      <anchor>a5723a225c756dde17d48b971f0633f1e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFEvent</name>
    <filename>class_x_f_event.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>XFEventType</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Unknown</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adfc2ad39d30f7a5df70c664bb2e24542</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Initial</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adc2df751813b38295784e246f9fe230e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DefaultTransition</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4e9bf5642755f9677aa9c4c415a3bcba</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Event</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4eefc024e7a72ce987c701013de3e100</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>int32_t</type>
      <name>EventId</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a6b2410e72ed1f17ff3bed9425304fd4c</anchor>
      <arglist></arglist>
    </member>
    <member kind="typedef">
      <type>XFEvent *</type>
      <name>XFEventHandle</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a6fcafbfe83ac61ffc14c6359ed4d903a</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Unknown</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adfc2ad39d30f7a5df70c664bb2e24542</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Initial</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91adc2df751813b38295784e246f9fe230e</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>DefaultTransition</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4e9bf5642755f9677aa9c4c415a3bcba</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Event</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a944826b381ee833ffddd30342088bf91a4eefc024e7a72ce987c701013de3e100</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>XFEvent</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a5863db01bfac524adfb473397054eee5</anchor>
      <arglist>(XFEventType eventType, EventId id=0)</arglist>
    </member>
    <member kind="function">
      <type>XFEventType</type>
      <name>getEventType</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>abce814f103406c0a78cad6dd394ac567</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>interface::XFBehavior *</type>
      <name>getBehavior</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a5cc48cb3354298c94428032082840033</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setBehavior</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>abbf3ce3d2bd6533c77900672a195320d</anchor>
      <arglist>(interface::XFBehavior *pBehavior)</arglist>
    </member>
    <member kind="function">
      <type>EventId</type>
      <name>getId</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a9693f3abf46a1398e891159ce2a7d6a9</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function">
      <type>int32_t</type>
      <name>getDelay</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a0f8a413de098cef7013a454ea0ce3218</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="function" virtualness="virtual">
      <type>virtual bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a917cec86b20ee75e768da336f5b18c70</anchor>
      <arglist>() const</arglist>
    </member>
    <member kind="slot" protection="protected">
      <type>void</type>
      <name>onTimerTimeout</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>aef22993be46fc044211f76d49a81fb27</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>TimeoutHandle</type>
      <name>startTimer</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>acb82eac70a8ca665c5599925baa70699</anchor>
      <arglist>(int32_t timeoutInMilliseconds)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>stopTimer</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a8217a8608794769416be0411846a09a9</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>purgeTimer</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a462ab02e8b12d0514f256f40146f5a64</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>const XFEventType</type>
      <name>eventType_</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a7b72b2c1edd9fba697b0bccbab3ed350</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>EventId</type>
      <name>id_</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a7a0bc1ccdeb533a35ffa92d4dbc940ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFBehavior *</type>
      <name>pBehavior_</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a1ec81ab9c537d5474cea2078d0d090e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>int32_t</type>
      <name>timeoutInMilliseconds</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>a22e31c3a9d18f1972811e1085346ca44</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>TimeoutHandle</type>
      <name>timeoutHandle</name>
      <anchorfile>class_x_f_event.html</anchorfile>
      <anchor>af362b200a2f5577639d105e95c89cb20</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFEventQueue</name>
    <filename>classinterface_1_1_x_f_event_queue.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>empty</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>ac233817695332ff2c5d5d153a8956347</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>push</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>a9c960cc570590a8ccb02bf879cefda9e</anchor>
      <arglist>(const XFEvent *pEvent)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual const XFEvent *</type>
      <name>front</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>a3050eeb0a1286bd5be22fba67cd52157</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>pop</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>a7f231860c5c4abdabe6db23f0dc0df66</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>pend</name>
      <anchorfile>classinterface_1_1_x_f_event_queue.html</anchorfile>
      <anchor>af7bd7c5d6fa604536de8249f897013c4</anchor>
      <arglist>()=0</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFEventQueue</name>
    <filename>class_x_f_event_queue.html</filename>
    <base>interface::XFEventQueue</base>
    <member kind="function">
      <type>bool</type>
      <name>empty</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a2d8dd5aa2e2ac3fc8dcf67d7ec3dcd3a</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>push</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a9da711dca0f385bb05c6fa187bf038dd</anchor>
      <arglist>(const XFEvent *pEvent) override</arglist>
    </member>
    <member kind="function">
      <type>const XFEvent *</type>
      <name>front</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a91c78f3845e8f4d128ae4b25241c09ec</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>pop</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a40671cbd4b5731daea332eb3c6844e71</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>pend</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a53d5e0eca81e14bba6c9b9b75b0e5566</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="typedef" protection="protected">
      <type>QQueue&lt; const XFEvent * &gt;</type>
      <name>EventQueue</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>af64984d52162b36ee640923a664fb446</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>releaseThread</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a8644de88191f5469b94192ef26e9eae7</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>QMutex</type>
      <name>mutex_</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a66f60e652b807ffb67e7e5b4b21904ce</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>QWaitCondition</type>
      <name>newEvents_</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a374c189f0ffd430963a87ce4c75d28b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>EventQueue</type>
      <name>queue_</name>
      <anchorfile>class_x_f_event_queue.html</anchorfile>
      <anchor>a3d6f7968984762a3a210bd4a11d9c1b3</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFEventStatus</name>
    <filename>class_x_f_event_status.html</filename>
    <member kind="enumeration">
      <type></type>
      <name>eEventStatus</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520f</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Consumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fafa48367d81ae56e4a4312c172fc3bddc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NotConsumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa619ade43444917a3cbbd0d806614a007</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RegionFinished</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa70119b07e0f3b80171c74eb4abf29dea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Terminate</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa8d3b26da0a8fd77cdb2af2e9a18d954b</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Consumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fafa48367d81ae56e4a4312c172fc3bddc</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>NotConsumed</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa619ade43444917a3cbbd0d806614a007</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>RegionFinished</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa70119b07e0f3b80171c74eb4abf29dea</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>Terminate</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>ac34e2c129013264955388a63de39520fa8d3b26da0a8fd77cdb2af2e9a18d954b</anchor>
      <arglist></arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>XFEventStatus</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a5d94f7b57653a3a30d0d66a4114e994f</anchor>
      <arglist>(eEventStatus eventStatus=Unknown)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>operator==</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a46751b6a5a371e38a3aa5b049a1de813</anchor>
      <arglist>(const XFEventStatus::eEventStatus &amp;eventStatus) const</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>operator|=</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a5782bdf58db36d8f09ce936f23129004</anchor>
      <arglist>(const XFEventStatus &amp;eventStatus)</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>is</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a24123948f7c56f793e75cfa51a7199cf</anchor>
      <arglist>(const eEventStatus eventStatus) const</arglist>
    </member>
    <member kind="variable">
      <type>eEventStatus</type>
      <name>status_</name>
      <anchorfile>class_x_f_event_status.html</anchorfile>
      <anchor>a44a906459a1d26817a6eceb46c6514f7</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFInitialEvent</name>
    <filename>class_x_f_initial_event.html</filename>
    <base>XFEvent</base>
    <member kind="function">
      <type>bool</type>
      <name>deleteAfterConsume</name>
      <anchorfile>class_x_f_initial_event.html</anchorfile>
      <anchor>a0a2ab8ade826467db2fe796a663031fe</anchor>
      <arglist>() const override</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFMutex</name>
    <filename>classinterface_1_1_x_f_mutex.html</filename>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>lock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a37b990e79385bae3fa7fab35a86c75b3</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>unlock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a201ab90921e662591f0623155f986834</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual bool</type>
      <name>tryLock</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>ac90bb5e91af283dbd68f150d92a1cccf</anchor>
      <arglist>(int32_t timeout=0)=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFMutex *</type>
      <name>create</name>
      <anchorfile>classinterface_1_1_x_f_mutex.html</anchorfile>
      <anchor>a7f48fd9da6c5d4766cf60543d2e8d48d</anchor>
      <arglist>()</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFMutex</name>
    <filename>class_x_f_mutex.html</filename>
    <base>interface::XFMutex</base>
    <member kind="function">
      <type>void</type>
      <name>lock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>a0ba8e69809b734834831b483484a100c</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unlock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>afc627db4f9392a9b47db64e670036b99</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>bool</type>
      <name>tryLock</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>aa730a84538b386cae15b5c78f1a125af</anchor>
      <arglist>(int32_t timeout=0) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>XFMutex</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>a89b72b33a9448fa8383860d9d3d64dcf</anchor>
      <arglist>()=default</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>QMutex</type>
      <name>mutex_</name>
      <anchorfile>class_x_f_mutex.html</anchorfile>
      <anchor>a9959f62c1c62d19cfb282400fe0e7509</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFThread</name>
    <filename>classinterface_1_1_x_f_thread.html</filename>
    <member kind="typedef">
      <type>int(XFThreadEntryPointProvider::*</type>
      <name>EntryMethodBody</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>a9a54b5460078f9b40a39755c193d23b8</anchor>
      <arglist>)(const void *)</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>start</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>ae0654b3ccea3e9d1c1e8896ad378390c</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>stop</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>a1d051cc93a8e3e8ebed49053a5a21983</anchor>
      <arglist>()=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>setPriority</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>a7ef7a6f23f015cabd098da2d2980f91b</anchor>
      <arglist>(XFThreadPriority priority)=0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual XFThreadPriority</type>
      <name>getPriority</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>ae0ee84a4d41959948a5420d73ed6ee68</anchor>
      <arglist>() const =0</arglist>
    </member>
    <member kind="function" virtualness="pure">
      <type>virtual void</type>
      <name>delay</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>a12f44fc8bdfaaa9b8499ba1b4b7d5cfb</anchor>
      <arglist>(uint32_t milliseconds)=0</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static interface::XFThread *</type>
      <name>create</name>
      <anchorfile>classinterface_1_1_x_f_thread.html</anchorfile>
      <anchor>ac1b09907baa20a2718ac5b1e8232fbbe</anchor>
      <arglist>(interface::XFThreadEntryPointProvider *pProvider, interface::XFThread::EntryMethodBody entryMethod, const char *threadName, const uint32_t stackSize=0)</arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>XFThread</name>
    <filename>class_x_f_thread.html</filename>
    <base>interface::XFThread</base>
    <member kind="function">
      <type>void</type>
      <name>start</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>adba3c78947def3359a4b2f7323d2d3b7</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>ade4f669d3f6995ebadda154d3f5b96e2</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>setPriority</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>ab70ad4a4dca36c6acdeca4833b545101</anchor>
      <arglist>(XFThreadPriority priority) override</arglist>
    </member>
    <member kind="function">
      <type>XFThreadPriority</type>
      <name>getPriority</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>ab1627c1494d919cb8ff09b27483dcb0a</anchor>
      <arglist>() const override</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>delay</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>ae2ddaf565b7c1a5e139e55bb485ff19d</anchor>
      <arglist>(uint32_t milliseconds) override</arglist>
    </member>
    <member kind="function" protection="protected">
      <type></type>
      <name>XFThread</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>a48ff0afabed5b880ec62f7b0349ac6a5</anchor>
      <arglist>(interface::XFThreadEntryPointProvider *pProvider, interface::XFThread::EntryMethodBody entryMethod, const char *threadName, const uint32_t stackSize=0)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>run</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>a5ba1fe93a974eb2c64aaf7382141f287</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFThreadEntryPointProvider *</type>
      <name>pEntryMethodProvider_</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>a63e3416d5e91368d9f46597a3dd59184</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" protection="protected">
      <type>interface::XFThread::EntryMethodBody</type>
      <name>entryMethod_</name>
      <anchorfile>class_x_f_thread.html</anchorfile>
      <anchor>a56f9cf912e89105633bd8c54d032ae1c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="class">
    <name>interface::XFThreadEntryPointProvider</name>
    <filename>classinterface_1_1_x_f_thread_entry_point_provider.html</filename>
  </compound>
  <compound kind="class">
    <name>XFTimeoutManager</name>
    <filename>class_x_f_timeout_manager.html</filename>
    <member kind="function">
      <type>void</type>
      <name>delayEvent</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a15c18a3294587e06fd24c47668b216f3</anchor>
      <arglist>(XFEvent *event, int32_t timeoutInMilliseconds)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stopTimer</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a35b74b765149bda63606094e4a4577a8</anchor>
      <arglist>(TimeoutHandle timer)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>purgeTimer</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>ac66c31b39aa2c7d7f6a5ebee3aa809dc</anchor>
      <arglist>(TimeoutHandle timer)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static XFTimeoutManager &amp;</type>
      <name>instance</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>af8bf62dd2256e4d0296e36356e942cf0</anchor>
      <arglist>()</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>delayEvent_</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>a0c2af0fb4bf57553c8f9fc73716daf6c</anchor>
      <arglist>(TimeoutHandle timer, int32_t timeoutInMilliseconds, XFEvent *event)</arglist>
    </member>
    <member kind="function" protection="protected">
      <type>void</type>
      <name>run</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>ad81bbd0659315477d352279ec5cceeaf</anchor>
      <arglist>() override</arglist>
    </member>
    <member kind="variable" protection="protected" static="yes">
      <type>static XFTimeoutManager *</type>
      <name>instance_</name>
      <anchorfile>class_x_f_timeout_manager.html</anchorfile>
      <anchor>af2964435f760b081a901104b127bf6fb</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>xf_core</name>
    <title>XF Core Classes</title>
    <filename>group__xf__core.html</filename>
    <class kind="class">XFBehavior</class>
    <class kind="class">XFCustomEvent</class>
    <class kind="class">XFDefaultTransition</class>
    <class kind="class">XFDispatcher</class>
    <class kind="class">XFEvent</class>
    <class kind="class">XFEventStatus</class>
    <class kind="class">XFInitialEvent</class>
    <class kind="class">XF</class>
  </compound>
  <compound kind="group">
    <name>port_qt</name>
    <title>Qt Port Classes</title>
    <filename>group__port__qt.html</filename>
    <class kind="class">XFEventQueue</class>
    <class kind="class">XFMutex</class>
    <class kind="class">XFThread</class>
    <class kind="class">XFTimeoutManager</class>
  </compound>
  <compound kind="page">
    <name>index</name>
    <title>RSE Execution Framework Documentation</title>
    <filename>index.html</filename>
    <docanchor file="index.html" title="Introduction">sec_xf_intro</docanchor>
    <docanchor file="index.html" title="XF Component Diagram">sec_xf_comp</docanchor>
    <docanchor file="index.html" title="XF Class Diagram">sec_xf_cmd</docanchor>
    <docanchor file="index.html" title="Starting Point">sec_xf_start</docanchor>
    <docanchor file="index.html" title="Links to related Documentation">sec_xf_external_links</docanchor>
    <docanchor file="index.html" title="XF Releases">sec_xf_releases</docanchor>
    <docanchor file="index.html" title="XF Version: 2.0.1 (2025-09)">xf_v_2_0_1</docanchor>
    <docanchor file="index.html" title="XF Version: 2.0.0 (2024-09)">xf_v_2_0_0</docanchor>
    <docanchor file="index.html" title="Simplified XF Version: 1.1.0 (2022-09)">xf_v_1_1_0</docanchor>
    <docanchor file="index.html" title="Simplified XF Version: 1.0.0 (2021-07)">xf_v_1_0_0</docanchor>
  </compound>
</tagfile>
