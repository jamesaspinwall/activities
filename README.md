# README

```

rails g scaffold task context:string title:string description:text tags:string data:text complete_ts:integer active_ts:integer
rails g scaffold site content:string title:string description:text url:string data:text
rails g scaffold snip context:string title:string code:text url:string data:text;rake db:migrate
rails g controller index default check show

Site
  id: integer
  content: string
  title: string
  description: text
  url: string
  data: text
  created_at: datetime
  updated_at: datetime
Snip
  id: integer
  context: string
  title: string
  code: text
  url: string
  data: text
  created_at: datetime
  updated_at: datetime
Task
  id: integer
  context: string
  title: string
  description: text
  tags: string
  data: text
  complete_ts: integer
  active_ts: integer
  created_at: datetime
  updated_at: datetime
     
     snips GET    /snips(.:format)          snips#index
           POST   /snips(.:format)          snips#create
  new_snip GET    /snips/new(.:format)      snips#new
 edit_snip GET    /snips/:id/edit(.:format) snips#edit
      snip GET    /snips/:id(.:format)      snips#show
           PATCH  /snips/:id(.:format)      snips#update
           PUT    /snips/:id(.:format)      snips#update
           DELETE /snips/:id(.:format)      snips#destroy
     sites GET    /sites(.:format)          sites#index
           POST   /sites(.:format)          sites#create
  new_site GET    /sites/new(.:format)      sites#new
 edit_site GET    /sites/:id/edit(.:format) sites#edit
      site GET    /sites/:id(.:format)      sites#show
           PATCH  /sites/:id(.:format)      sites#update
           PUT    /sites/:id(.:format)      sites#update
           DELETE /sites/:id(.:format)      sites#destroy
     tasks GET    /tasks(.:format)          tasks#index
           POST   /tasks(.:format)          tasks#create
  new_task GET    /tasks/new(.:format)      tasks#new
 edit_task GET    /tasks/:id/edit(.:format) tasks#edit
      task GET    /tasks/:id(.:format)      tasks#show
           PATCH  /tasks/:id(.:format)      tasks#update
           PUT    /tasks/:id(.:format)      tasks#update
           DELETE /tasks/:id(.:format)      tasks#destroy          DELETE /tasks/:id(.:format)      tasks#destroy
```