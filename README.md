# S1.0

### 应用场景: 
1. 需要只读某个变量时
1. 需要隐藏某个变量时
### 如何使用: 
- #### 添加ReadOnly或Hide标记即可, 参数可使用012简写
    - ```
        [Header("全时只读")]
        [ReadOnly]
        public string 只读;

        [ReadOnly(ReadOnlyAttribute.OptType.InEditor)]
        public string 只读于编辑器运行中可编辑;

        [ReadOnly(ReadOnlyAttribute.OptType.AtPlaying)]
        public string 只读于运行中编辑器中可编辑;

        [Header("全时隐藏")]
        [Hide]
        public string 隐藏;

        [Hide(HideAttribute.OptType.InEditor)]
        public string 隐藏于编辑器显示于运行中;

        [Hide(HideAttribute.OptType.AtPlaying)]
        public string 隐藏于运行中显示于编辑器;
      ```
    - 优点: 
      - 自由只读与隐藏面板变量
    - 缺点: 