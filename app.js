import "./stylesheets/main.css";
import "./helpers/context_menu.js";
import "./helpers/external_links.js";
import { remote } from "electron";
import jetpack from "fs-jetpack";
import { greet } from "./hello_world/hello_world";
import env from "env";
const app = remote.app;
const appDir = jetpack.cwd(app.getAppPath());
const manifest = appDir.read("package.json", "json");
const osMap = {
  win32: "Windows",
  darwin: "macOS",
  linux: "Linux"
};
document.querySelector("#app").style.display = "block";
document.querySelector("#greet").innerHTML = greet();
