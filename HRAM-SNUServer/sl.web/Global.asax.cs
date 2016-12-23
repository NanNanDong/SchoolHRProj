﻿using System.IO;
using System.Reflection;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Autofac;
using PetaPoco;
using sl.common;
using sl.model;
using sl.web.ui;
using System.Web.Http;
using Autofac.Integration.Mvc; //必须是.net 4.5.1

namespace sl.web
{
    public class Global : HttpApplication
    {
        void Application_Start()
        {
            // 在应用程序启动时运行的代码
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            //注册petapoco的DIContainer，否则使用service为null
            ContainerBuilder builder = new ContainerBuilder();
            builder.RegisterAssemblyTypes(Assembly.Load("sl.service")).Where(p => p.Name.EndsWith("Service"))
                .AsImplementedInterfaces().SingleInstance();
            builder.RegisterControllers(Assembly.GetExecutingAssembly());
            IContainer container = builder.Build();
            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
            DIContainer.RegisterContainer(container);
        }
    }
}