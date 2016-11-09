# README

```

rails g scaffold task context:string title:string description:text tags:string data:text complete_ts:integer active_ts:integer
rails g scaffold site content:string title:string description:text url:string data:text
 
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
          DELETE /tasks/:id(.:format)      tasks#destroy
```