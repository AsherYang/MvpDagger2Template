package ${packageName}.app;

import android.content.Context;

import ${packageName}.app.${appClass};

import javax.inject.Singleton;

import dagger.Component;

@Singleton
@Component(modules = {AppModule.class})
public interface AppComponent
{
   void inject(${appClass} app);
}